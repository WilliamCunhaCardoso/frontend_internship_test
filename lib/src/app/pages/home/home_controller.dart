import './home_presenter.dart';
import '../../../domain/entities/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  // * Single User Var
  UserModel _user;
  // * Single User Getter
  UserModel get user => _user; // data used by the View
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
    // * Unique User Listeners
    // * On Next from Get User
    homePresenter.getUserOnNext = (UserModel user) {
      print(user.toString());
      _user = user;
      refreshUI(); // Refreshes the UI manually
    };
    // * On Complete from Get User
    homePresenter.getUserOnComplete = () {
      print('User retrieved'); 
    };
    // * On Error from Get User
    // On error, show a snackbar, remove the user, and refresh the UI
    homePresenter.getUserOnError = (e) {
      print('Could not retrieve user.');
      ScaffoldState state = getState();
      state.showSnackBar(SnackBar(content: Text(e.message)));
      _user = null;
      refreshUI(); // Refreshes the UI manually
    };

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

  void getUser() => homePresenter.getUser('01');
  void getAllUsers() => homePresenter.getAllUsers();
  void getUserwithError() => homePresenter.getUser('test-uid231243');

  void buttonPressed() {
    // _counter++;
    //todo move to some page
    refreshUI();
  }

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