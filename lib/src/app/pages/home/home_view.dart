import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:frontent_internship_test/src/app/pages/profile/profile_view.dart';

import '../../widgets/custom_circle_avatar.dart';
import '../../pages/register/register_view.dart';
import '../../widgets/user_list_tile.dart';
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
  void initState() {
    super.initState();
    // * Getting User List
    controller.getAllUsers();
  }

  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true),
      //* List User data
      body: Scaffold(
        key: globalKey,
        body: controller.users == null
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (_, index) {
                  return UserListTile(
                    leading: CustomCircleAvatar(
                        text: controller.users[index].username),
                    title: controller.users[index].username,
                    subtitle: controller.users[index].email,
                    function: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ProfilePage(user: controller.users[index]),
                      ),
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => RegisterPage(),
              ));
        },
        label: Text('Add User'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
