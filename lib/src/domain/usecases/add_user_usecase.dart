import 'dart:async';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../entities/user_model.dart';
import '../repositories/user_repository.dart';

// In this case, no parameters were needed. Hence, void. Otherwise, change to appropriate.
class AddUserUseCase extends CompletableUseCase<AddUserUseCaseParams> {
  final UserRepository _userRepository;

  AddUserUseCase(this._userRepository);

  @override
  Future<Stream<void>> buildUseCaseStream(params) async {
    final StreamController controller = StreamController();
    try {
      _userRepository.addUser(params.user);
      logger.finest('AddUserUseCase successful.');
      controller.close();
    } catch (e) {
      print(e);
      logger.severe('AddUserUseCase unsuccessful.');
      controller.addError(e);
    }
    return controller.stream;
  }
}

class AddUserUseCaseParams {
  final UserModel user;
  AddUserUseCaseParams(this.user);
}
