import 'dart:async';
import 'dart:io';
import 'package:domain/modules/attachments/usecases/upload_files_use_case.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';
import 'package:domain/modules/common/usecases/set_shared_string_usecase.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:domain/modules/websocket/usecases/get_messages_controller_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:file_picker/file_picker.dart';

class ChatRoomController extends GetxController {
  late RefreshController refreshController;

  ChatRoomController(
      {required this.getMessagesUseCase,
      required this.sendMessageUseCase,
      required this.getMessagesControllerUseCase,
      required this.uploadFilesUseCase,
      required this.setSharedStringUseCase
      });

  late TextEditingController messageInputController;
  late ConversationEntity conversationEntity;
  late StreamController<MessageEntity> messagesController;
  late StreamSubscription<MessageEntity> messagesSubscription;
  Rx<String> conversationImg = ''.obs;
  RxList<MessageEntity> messagesList = RxList();
  Rx<bool> isLoading = false.obs;
  Rx<String> messageInputValue = ''.obs;
  int currentPage = 1;
  CurrentUserEntity currentUserEntity = Get.find<ChatsController>().currentUserEntity!;
  final GetMessagesUseCase getMessagesUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final GetMessagesControllerUseCase getMessagesControllerUseCase;
  final UploadFilesUseCase uploadFilesUseCase;
  final SetSharedStringUseCase setSharedStringUseCase;
  Rx<bool> messageIsLoading = false.obs;
  Rx<int> otherChatsNotifications = 0.obs;
  String previousMessageId = '';
  final chatsController = Get.find<ChatsController>();
  bool sentByMe = false;
  bool isFirst = false;
  bool isLast = false;
  Rx<int> selectedFiles = 0.obs;
  List<File>? files;
  Rx<int> membersCount = 0.obs;
  List<String> imagesLinks = [];

  setBubbleSettings(MessageEntity message) {
    sentByMe = false;
    isFirst = false;
    isLast = false;
    if (message.type == 1) {
      sentByMe = message.owner!.id ==
          currentUserEntity.id;
      if (conversationEntity.type == 2) {
        int currentIndex = messagesList.indexOf(message);
        if (currentIndex != 0 &&
                messagesList[currentIndex - 1].owner!.id != message.owner!.id ||
            currentIndex != 0 && messagesList[currentIndex - 1].type == 2) {
          isFirst = true;
        }

        if (currentIndex == messagesList.length - 1) {
          isLast = true;
        }

        if (currentIndex != messagesList.length - 1 &&
            messagesList[currentIndex + 1].owner!.id != message.owner!.id) {
          isLast = true;
        }
        if (currentIndex == 0) {
          isFirst = true;
        }
      }
    }
  }

  initialLoading() async {
    setIsLoading(isLoading);
    conversationEntity = Get.arguments['conversationEntity'];
    membersCount.value = conversationEntity.membersCount;
    conversationImg = getConversationImg(
            conversationEntity, currentUserEntity)
        .obs;
    final result = await getMessagesUseCase.call(GetMessagesParams(
        page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      messagesList = r.obs;
    });
    messagesList = messagesList.reversed.toList().obs;
    messagesList.refresh();
    setIsLoading(isLoading);

    messagesSubscription =
        chatsController.messagesStream.asBroadcastStream().listen((message) {
      changeMembersCount(message.content, membersCount);
      if (message.conversation.id == conversationEntity.id &&
          messagesList.last.id != message.id) {
        messagesList.add(message);
        messagesList.refresh();
        addImagesToList();
      }
      if (message.conversation.id != conversationEntity.id &&
          message.id != previousMessageId) {
        previousMessageId = message.id;
        otherChatsNotifications.value += 1;
      }
    });

    addImagesToList();
  }

  addImagesToList(){
    List<String> imagesLinksTemp = [];
    messagesList.forEach((message) {
      message.attachments.forEach((attachment) {
        if(attachment.mimetype.contains('image')){
          imagesLinksTemp.add(attachment.url);
        }
      });
      imagesLinks = imagesLinksTemp;
    });
    imagesLinks = imagesLinks.reversed.toList();
  }

  Future<void> onBack() async {
    chatsController.conversations.forEach((element) {
      if (element.id == conversationEntity.id) {
        chatsController
                .conversations[chatsController.conversations.indexOf(element)] =
            element.copyWith(unread: 0);
      }
    });
    currentPage = 1;
    final result = await getMessagesUseCase.call(GetMessagesParams(
        page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      messagesList = r.obs;
    });
  }

  Future<void> refresherOnLoading() async {
    currentPage += 1;
    final result = await getMessagesUseCase.call(GetMessagesParams(
        page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      if (r.isEmpty) {
        refreshController.loadNoData();
      } else {
        r = r.reversed.toList();
        messagesList.insertAll(0, r);
        messagesList.refresh();
        refreshController.loadComplete();
        addImagesToList();
      }
    });
  }

  Future<void> sendMessage() async {
    messageInputValue = ''.obs;
    setIsLoading(messageIsLoading);
    selectedFiles.value = 0;
    List<String> attachmentsId = [];
    if (files?.isNotEmpty ?? false) {
      final result = await uploadFilesUseCase.call(files!);
      result.fold((l) => print('uploading files error'), (r) async{
        Future.forEach(r, (PictureEntity element){
           setSharedStringUseCase.call(element.id, files![r.indexOf(element)].path);
           attachmentsId.add(element.id);
        });
        r.forEach((element) {
        });
      });
    }
    String messageContent = messageInputController.text;
    messageInputController.clear();
    final result = await sendMessageUseCase.call(SendMessageParams(
        conversationId: conversationEntity.id,
        message: messageContent,
        attachments: attachmentsId));
    result.fold((l) => print('Message error'), (r) {
    });
    selectedFiles.value = 0;
    setIsLoading(messageIsLoading);
  }

  Future<void> pickImages() async {
    final result = await ImagePicker().pickMultiImage();
   if(result != null){
     files = [];
     result.forEach((element) {
       files!.add(File(element.path));
     });
   }
    selectedFiles.value = files?.length ?? 0;
    Get.back();
  }

  Future<void> pickFiles() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if(result != null){
      files = [];
      result.files.forEach((file) {
        files!.add(File(file.path!));
      });
    }
    selectedFiles.value = files?.length ?? 0;
    Get.back();
  }

  @override
  void onInit() async {
    super.onInit();
    messageInputController = TextEditingController();
    refreshController = RefreshController();
    await initialLoading();
  }

  @override
  void onClose() {
    super.onClose();
    messageInputController.dispose();
    messagesSubscription.cancel();
    refreshController.dispose();
  }
}
