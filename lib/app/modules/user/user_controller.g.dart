// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserController on _UserControllerBase, Store {
  final _$userListAtom = Atom(name: '_UserControllerBase.userList');

  @override
  List<UserModel> get userList {
    _$userListAtom.context.enforceReadPolicy(_$userListAtom);
    _$userListAtom.reportObserved();
    return super.userList;
  }

  @override
  set userList(List<UserModel> value) {
    _$userListAtom.context.conditionallyRunInAction(() {
      super.userList = value;
      _$userListAtom.reportChanged();
    }, _$userListAtom, name: '${_$userListAtom.name}_set');
  }

  final _$userProfileAtom = Atom(name: '_UserControllerBase.userProfile');

  @override
  dynamic get userProfile {
    _$userProfileAtom.context.enforceReadPolicy(_$userProfileAtom);
    _$userProfileAtom.reportObserved();
    return super.userProfile;
  }

  @override
  set userProfile(dynamic value) {
    _$userProfileAtom.context.conditionallyRunInAction(() {
      super.userProfile = value;
      _$userProfileAtom.reportChanged();
    }, _$userProfileAtom, name: '${_$userProfileAtom.name}_set');
  }

  final _$_UserControllerBaseActionController =
      ActionController(name: '_UserControllerBase');

  @override
  dynamic showUserList() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction();
    try {
      return super.showUserList();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic showUniqueUser() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction();
    try {
      return super.showUniqueUser();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addUser() {
    final _$actionInfo = _$_UserControllerBaseActionController.startAction();
    try {
      return super.addUser();
    } finally {
      _$_UserControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'userList: ${userList.toString()},userProfile: ${userProfile.toString()}';
    return '{$string}';
  }
}
