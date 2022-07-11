import 'package:data/modules/authentication/models/index.dart';
import 'package:domain/modules/authentication/entities/index.dart';

class AuthenticationMapper {
  AuthJWTResponseEntity authJWTResponseToEntity(AuthJWTResponseApiDto authJWTResponseApiDto){
    return AuthJWTResponseEntity(access: authJWTResponseApiDto.access, refresh: authJWTResponseApiDto.refresh);
  }

  AccessTokenEntity accessTokenDtoToEntity(AccessTokenApiDto accessTokenApiDto){
    return AccessTokenEntity(access: accessTokenApiDto.access);
  }
}
