import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';

class ProfileMapper {
  ProfileEntity profileEntityFromApiDto(ProfileApiDto profileApiDto){
    return ProfileEntity(id: profileApiDto.id, email: profileApiDto.email, firstName: profileApiDto.firstName, lastName: profileApiDto.lastName, sso: profileApiDto.sso, keys: profileApiDto.keys, photo: profileApiDto.photo);
  }

  CurrentUserEntity profileEntityToCurrentUserEntity(ProfileEntity profileEntity){
    return CurrentUserEntity(id: profileEntity.id, email: profileEntity.email, firstName: profileEntity.firstName, lastName: profileEntity.lastName, picture: profileEntity.photo);
  }

  List<ProfileEntity> listProfileToEntity(List<ProfileApiDto> profileDtoList){
    List<ProfileEntity> listEntity = [];
    profileDtoList.forEach((element) {
      listEntity.add(profileEntityFromApiDto(element));
    });
    return listEntity;
  }

  ProfileEntity? profileEntityFromApiDtoNullable(ProfileApiDto? profileApiDto){
    if(profileApiDto != null) {
      return ProfileEntity(id: profileApiDto.id,
          email: profileApiDto.email,
          firstName: profileApiDto.firstName,
          lastName: profileApiDto.lastName,
          sso: profileApiDto.sso,
          keys: profileApiDto.keys,
          photo: profileApiDto.photo);
    } else {
      return null;
    }
  }
}