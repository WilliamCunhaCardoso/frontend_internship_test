import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../../domain/entities/user_model.dart';
import '../../../domain/usecases/add_user_usecase.dart';

class RegisterPresenter extends Presenter {
  // * AddUSer Functions
  Function addUserOnNext;
  Function addUserOnComplete;
  Function addUserOnError;
  
  // * Instancers
  final AddUserUseCase addUserUseCase;

  // * Constructor
  RegisterPresenter(usersRepo) : addUserUseCase = AddUserUseCase(usersRepo);

  // * Get List of Users
  void addUser(UserModel userModel) {
    addUserUseCase.execute(
        _AddUserUseCaseObserver(this), AddUserUseCaseParams(userModel));
  }

  @override
  void dispose() {
    addUserUseCase.dispose();
  }
}

class _AddUserUseCaseObserver implements Observer<void> {
  final RegisterPresenter registerPresenter;

  _AddUserUseCaseObserver(this.registerPresenter);

  void onNext(_) {
    assert(registerPresenter.addUserOnNext != null);
    registerPresenter.addUserOnNext();
  }

  void onComplete() {
    assert(registerPresenter.addUserOnComplete != null);
    registerPresenter.addUserOnComplete();
  }

  void onError(e) {
    assert(registerPresenter.addUserOnError != null);
    registerPresenter.addUserOnError(e);
  }
}
