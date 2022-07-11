
import 'package:domain/modules/authentication/entities/index.dart';

import '../repository/authentication_repository.dart';

class GetTokensUseCase{
  final AuthenticationRepository authenticationRepository;

  GetTokensUseCase({required this.authenticationRepository});

  AuthJWTResponseEntity? call() {
    return authenticationRepository.getTokens();
  }
}