import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../entities/user_model.dart';
import '../repositories/user_repository.dart';

class GetUserUseCase
    extends UseCase<GetUserUseCaseResponse, GetUserUseCaseParams> {
  final UserRepository usersRepository;
  GetUserUseCase(this.usersRepository);

  @override
  Future<Stream<GetUserUseCaseResponse>> buildUseCaseStream(
      GetUserUseCaseParams params) async {
    final StreamController<GetUserUseCaseResponse> controller =
        StreamController();
    try {
      // get user
      UserModel user = await usersRepository.getUser(params.userId);
      // Adding it triggers the .onNext() in the `Observer`
      // It is usually better to wrap the reponse inside a respose object.
      controller.add(GetUserUseCaseResponse(user));
      logger.finest('GetUserUseCase successful.');
      controller.close();
    } catch (e) {
      logger.severe('GetUserUseCase unsuccessful.');
      // Trigger .onError
      controller.addError(e);
    }
    return controller.stream;
  }
}

/// Wrapping params inside an object makes it easier to change later
class GetUserUseCaseParams {
  final String userId;
  GetUserUseCaseParams(this.userId);
}

/// Wrapping response inside an object makes it easier to change later
class GetUserUseCaseResponse {
  final UserModel user;
  GetUserUseCaseResponse(this.user);
}
