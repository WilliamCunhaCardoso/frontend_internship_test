import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
// import 'package:frontent_internship_test/src/app/widgets/custom_circle_avatar.dart';

import '../../../data/repositories/data_user_repository.dart';
import 'home_controller.dart';

class HomePage extends View {
  final String title;
  HomePage({Key key, this.title = "User List"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ViewState<HomePage, HomeController> {
  _HomePageState() : super(HomeController(DataUsersRepository()));

  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      //* List User data
      body: Container(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {}, //todo route to register view
        label: Text('Add User'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

// return GestureDetector(
//   onTap: () {},//* Route to profile
//   child: Card(
//     child: ListTile(
//       leading: CustomCircleAvatar(text: user.username),
//       title: Text(user.username),
//       subtitle: Text(user.email),
//     ),
//   ),
// );
