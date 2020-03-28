import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'user_controller.dart';

class UserPage extends StatefulWidget {
  final String title;
  const UserPage({Key key, this.title = "User"}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
  var userController = Modular.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemBuilder: (_, index) {
            var user = userController.userList[index];
            return ListTile(
              title: Text(user.username),
            );
          },
        ),
      ),
    );
  }
}
