import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../widgets/custom_circle_avatar.dart';
import '../../widgets/info_fields.dart';
import '../../widgets/title_session.dart';
import '../../../domain/entities/user_model.dart';
import 'profile_controller.dart';

class ProfilePage extends View {
  final String title;
  final UserModel user;

  ProfilePage({
    Key key,
    this.title = "User Data",
    @required this.user,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ViewState<ProfilePage, ProfileController> {
  _ProfilePageState() : super(ProfileController());

  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          //* Parametrized field that shows user information
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
            InfoFields(description: 'Phone', value: widget.user.phone),
            InfoFields(description: 'Birth', value: widget.user.birth),
            InfoFields(description: 'CPF', value: widget.user.cpf),
            TitleSession(text: 'address data'),
            InfoFields(description: 'CEP', value: widget.user.cep),
            InfoFields(description: 'Street', value: widget.user.street),
            InfoFields(
                description: 'Number', value: widget.user.number.toString()),
            InfoFields(
                description: 'Complement', value: widget.user.complement),
            InfoFields(description: 'District', value: widget.user.district),
            InfoFields(description: 'City', value: widget.user.city),
            InfoFields(description: 'State', value: widget.user.state),
          ],
        ),
      ),
    );
    // throw UnimplementedError();
  }
}
