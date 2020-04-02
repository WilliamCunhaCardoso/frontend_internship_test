import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import 'register_controller.dart';

class RegisterPage extends View {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ViewState<RegisterPage, RegisterController> {
  _RegisterPageState() : super(RegisterController());

  @override
  Widget buildPage() {
    return Container(
      
    );
  }
}


        // builder: (_) => CustomBottomSheet(
        //   colors: registerController.isValidAll ? Colors.green : Colors.grey,
        //   function: registerController.addUser, //* add user function
        //   router: Modular.to.pop,
        //   functionEnable: registerController.isValidAll,
        // ),

              // builder: (_) => Field(
              //   label: 'Name',
              //   controller: registerController.usernameController,
              //   onChanged: registerController.setUsername,
              //   cleaner: registerController.usernameController.clear,
              //   visible: registerController.isUsernameValid,
              // ),