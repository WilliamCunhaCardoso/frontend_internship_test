import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../../domain/entities/user_model.dart';
import 'profile_controller.dart';

class ProfilePage extends View {
  final String title;
  final UserModel user;

  ProfilePage({Key key, this.title = "User Data", this.user})
      : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ViewState<ProfilePage, ProfileController> {
  _ProfilePageState() : super(ProfileController());

  @override
  Widget buildPage() {
    // TODO: implement buildPage
    throw UnimplementedError();
  }
}

            // InfoFields(description: 'State', value: widget.user.state),