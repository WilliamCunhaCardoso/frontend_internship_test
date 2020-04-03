import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../../domain/usecases/get_all_users_usecase.dart';

class HomePresenter extends Presenter {
  // * GetAllUsers Functions
  Function getAllUsersOnNext;
  Function getAllUsersOnComplete;
  Function getAllUsersOnError;

  // * Instancers
  final GetAllUsersUseCase getAllUsersUseCase;

  // * Constructor
  HomePresenter(usersRepo)
      : getAllUsersUseCase = GetAllUsersUseCase(usersRepo);

  // * Get List of Users
  void getAllUsers() {
    // execute getUseruserCase
    getAllUsersUseCase.execute(
        _GetAllUsersUseCaseObserver(this), GetAllUsersUseCaseParams());
  }

  @override
  void dispose() {
    getAllUsersUseCase.dispose();
  }
}

// * User List
class _GetAllUsersUseCaseObserver extends Observer<GetAllUsersUseCaseResponse> {
  final HomePresenter presenter;
  _GetAllUsersUseCaseObserver(this.presenter);
  @override
  void onComplete() {
    assert(presenter.getAllUsersOnComplete != null);
    presenter.getAllUsersOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getAllUsersOnError != null);
    presenter.getAllUsersOnError(e);
  }

  @override
  void onNext(response) {
    assert(presenter.getAllUsersOnNext != null);
    presenter.getAllUsersOnNext(response.users);
  }
}
