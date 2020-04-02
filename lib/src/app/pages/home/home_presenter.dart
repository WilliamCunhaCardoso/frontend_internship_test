import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../../domain/usecases/get_all_users_usecase.dart';
import '../../../domain/usecases/get_user_usecase.dart';

class HomePresenter extends Presenter {
  // * GetUser Functions
  Function getUserOnNext;
  Function getUserOnComplete;
  Function getUserOnError;

  // * GetAllUsers Functions
  Function getAllUsersOnNext;
  Function getAllUsersOnComplete;
  Function getAllUsersOnError;

  // * Instancers
  final GetUserUseCase getUserUseCase;
  final GetAllUsersUseCase getAllUsersUseCase;

  // * Constructor
  HomePresenter(usersRepo)
      : getUserUseCase = GetUserUseCase(usersRepo),
        getAllUsersUseCase = GetAllUsersUseCase(usersRepo);

  // * Get unique user
  void getUser(String userId) {
    // execute getUseruserCase
    getUserUseCase.execute(
        _GetUserUseCaseObserver(this), GetUserUseCaseParams(userId));
  }

  // * Get List of Users
  void getAllUsers() {
    // execute getUseruserCase
    getAllUsersUseCase.execute(
        _GetAllUsersUseCaseObserver(this), GetAllUsersUseCaseParams());
  }

  @override
  void dispose() {
    getUserUseCase.dispose();
    getAllUsersUseCase.dispose();
  }
}

// * Unique User
class _GetUserUseCaseObserver extends Observer<GetUserUseCaseResponse> {
  final HomePresenter presenter;
  _GetUserUseCaseObserver(this.presenter);
  @override
  void onComplete() {
    assert(presenter.getUserOnComplete != null);
    presenter.getUserOnComplete();
  }

  @override
  void onError(e) {
    assert(presenter.getUserOnError != null);
    presenter.getUserOnError(e);
  }

  @override
  void onNext(response) {
    assert(presenter.getUserOnNext != null);
    presenter.getUserOnNext(response.user);
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
