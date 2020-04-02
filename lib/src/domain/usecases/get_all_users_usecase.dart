import 'dart:async';

import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../entities/user_model.dart';
import '../repositories/user_repository.dart';

class GetAllUsersUseCase
    extends UseCase<GetAllUsersUseCaseResponse, GetAllUsersUseCaseParams> {
  final UserRepository usersRepository;
  GetAllUsersUseCase(this.usersRepository);

  @override
  Future<Stream<GetAllUsersUseCaseResponse>> buildUseCaseStream(
      GetAllUsersUseCaseParams params) async {
    final StreamController<GetAllUsersUseCaseResponse> controller =
        StreamController();
    try {
      // get user
      List<UserModel> users = await usersRepository.getAllUsers();
      // Adding it triggers the .onNext() in the `Observer`
      // It is usually better to wrap the reponse inside a respose object.
      controller.add(GetAllUsersUseCaseResponse(users));
      logger.finest('GetAllUsersUseCase successful.');
      controller.close();
    } catch (e) {
      logger.severe('GetAllUsersUseCase unsuccessful.');
      // Trigger .onError
      controller.addError(e);
    }
    return controller.stream;
  }
}

/// Wrapping params inside an object makes it easier to change later
class GetAllUsersUseCaseParams {
  GetAllUsersUseCaseParams();
}

/// Wrapping response inside an object makes it easier to change later
class GetAllUsersUseCaseResponse {
  final List<UserModel> users;
  GetAllUsersUseCaseResponse(this.users);
}
