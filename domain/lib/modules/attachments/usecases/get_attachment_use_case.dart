import 'package:dartz/dartz.dart';
import 'package:domain/modules/attachments/repository/attachments_repository.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase.dart';
import '../../chat/conversations/entities/index.dart';

class GetAttachmentUseCase extends UseCase<PictureEntity, String>{

  final AttachmentsRepository attachmentsRepository;

  GetAttachmentUseCase({required this.attachmentsRepository});

  @override
  Future<Either<Failure, PictureEntity>> call(String id) {
    return attachmentsRepository.getAttachment(id);
  }


}