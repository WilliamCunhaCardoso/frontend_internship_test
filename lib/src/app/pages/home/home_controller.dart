import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import './home_presenter.dart';
import '../../../domain/entities/user_model.dart';

class HomeController extends Controller {
  // * List Users Var
  List<UserModel> _users;
  // * List Users Getter
  List<UserModel> get users => _users; // data used by the View

  final HomePresenter homePresenter;
  // Presenter should always be initialized this way

  HomeController(usersRepo)
      : homePresenter = HomePresenter(usersRepo),
        super();

  @override
  // this is called automatically by the parent class
  void initListeners() {
    // * List Users Listeners
    // * On Next Get All Users
    homePresenter.getAllUsersOnNext = (List<UserModel> users) {
      print(users.toString());
      _users = users;
      refreshUI(); // Refreshes the UI manually
    };
    // * On Complete Get All Users
    homePresenter.getAllUsersOnComplete = () {
      print('Users retrieved');
    };
    // * On Error Get All Users
    // On error, show a snackbar, remove the user, and refresh the UI
    homePresenter.getAllUsersOnError = (e) {
      print('Could not retrieve the list of users.');
      ScaffoldState state = getState();
      state.showSnackBar(SnackBar(content: Text(e.message)));
      _users = null;
      refreshUI(); // Refreshes the UI manually
    };
  }

  void getAllUsers() => homePresenter.getAllUsers();

  @override
  void onResumed() {
    print("On resumed");
    super.onResumed();
  }

  @override
  void dispose() {
    homePresenter.dispose(); // don't forget to dispose of the presenter
    super.dispose();
  }
}
