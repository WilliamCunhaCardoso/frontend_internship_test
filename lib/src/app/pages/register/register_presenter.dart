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
    // execute getUseruserCase
    addUserUseCase.execute(
        _AddUserUseCaseObserver(this), AddUserUseCaseParams(userModel));
  }

  @override
  void dispose() {
    addUserUseCase.dispose();
  }
}

class _AddUserUseCaseObserver implements Observer<void> {
  // The above presenter
  // This is not optimal, but it is a workaround due to dart limitations. Dart does
  // not support inner classes or anonymous classes.
  final RegisterPresenter registerPresenter;

  _AddUserUseCaseObserver(this.registerPresenter);

  /// implement if the `Stream` emits a value
  // in this case, unnecessary
  void onNext(_) {
    assert(registerPresenter.addUserOnNext != null);
    registerPresenter.addUserOnNext();
  }

  /// Login is successful, trigger event in [Register Controller]
  void onComplete() {
    // any cleaning or preparation goes here
    assert(registerPresenter.addUserOnComplete != null);
    registerPresenter.addUserOnComplete();
  }

  /// Login was unsuccessful, trigger event in [Register Controller]
  void onError(e) {
    // any cleaning or preparation goes here
    assert(registerPresenter.addUserOnError != null);
    registerPresenter.addUserOnError(e);
  }
}
