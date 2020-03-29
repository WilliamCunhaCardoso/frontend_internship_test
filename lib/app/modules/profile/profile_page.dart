import 'package:flutter/material.dart';
import 'package:frontent_internship_test/app/modules/profile/widgets/information.dart';
import 'package:frontent_internship_test/app/modules/user/user_model.dart';
import 'package:frontent_internship_test/app/shared/circle_avatar.dart';
import 'package:frontent_internship_test/app/shared/titleSession.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  final UserModel user;

  const ProfilePage({Key key, this.title = "User Data", this.user})
      : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            CustomCircleAvatar(
                text: widget.user.username, fontSize: 50, circleRadius: 56),
            SizedBox(height: 15),
            Center(
                child: Text(widget.user.username,
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w600))),
            SizedBox(height: 25),
            TitleSession(text: 'personal data'),
            InfoFields(description: 'Email', value: widget.user.email),
            InfoFields(description: 'Email', value: widget.user.phone),
            // InfoFields(description: 'Email', value: widget.user.email),
            InfoFields(description: 'Email', value: widget.user.cpf),
            TitleSession(text: 'address data'),
            InfoFields(description: 'Email', value: widget.user.cep),
            InfoFields(description: 'Email', value: widget.user.street),
            InfoFields(
              description: 'Email',
              value: widget.user.number.toString(),
            ),
            InfoFields(description: 'Email', value: widget.user.complement),
            InfoFields(description: 'Email', value: widget.user.district),
            InfoFields(description: 'Email', value: widget.user.city),
            InfoFields(description: 'Email', value: widget.user.state),
          ],
        ),
      ),
    );
  }
}
