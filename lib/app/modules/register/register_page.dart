import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/user/user_controller.dart';
// import 'package:frontent_internship_test/app/modules/user/user_model.dart';
import 'package:frontent_internship_test/app/shared/titleSession.dart';

import 'register_controller.dart';
import 'widgets/field.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register New User"})
      : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var registerController = Modular.get<RegisterController>();
  var userController = Modular.get<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.navigate_before),
            onPressed: () => Modular.to.pop(),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: <Widget>[
              //* Personal Fields
              TitleSession(text: 'personal data'),
              Observer(
                builder: (_) => Field(
                  label: 'Name',
                  controller: registerController.usernameController,
                  onChanged: registerController.setUsername,
                  cleaner: registerController.usernameController.clear,
                  // visible: registerController.isUsernameValid,
                ),
              ),
              Field(
                label: 'Email',
                controller: registerController.emailController,
                onChanged: registerController.setEmail,
                cleaner: registerController.emailController.clear,
                // visible: registerController.isUsernameValid,
              ),
              Field(
                label: 'Phone',
                controller: registerController.phoneController,
                cleaner: registerController.phoneController.clear,
                onChanged: registerController.setPhone,
                // visible: registerController.isUsernameValid,
              ),
              Field(
                label: 'Date of Birth',
                controller: registerController.birthController,
                cleaner: registerController.birthController.clear,
                onChanged: registerController.setBirth,
                // visible: registerController.isUsernameValid,
              ),
              Field(
                label: 'CPF',
                controller: registerController.cpfController,
                cleaner: registerController.cpfController.clear,
                onChanged: registerController.setCPF,
                // visible: registerController.isUsernameValid,
              ),

              //* Address fields
              TitleSession(text: 'address data'),
              Field(
                label: 'CEP', controller: registerController.cepController,
                cleaner: registerController.cpfController.clear,
                onChanged: registerController.setCEP,
                // visible: registerController.isUsernameValid,
              ),
              Field(
                label: 'Street',
                controller: registerController.streetController,
                cleaner: registerController.cpfController.clear,
                // visible: registerController.isUsernameValid,
                onChanged: registerController.setStreet,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Field(
                      label: 'Number',
                      controller: registerController.numberController,
                      cleaner: registerController.numberController.clear,
                      // visible: registerController.isUsernameValid,
                      onChanged: registerController.setNumber,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Field(
                      label: 'Complement',
                      controller: registerController.complementController,
                      cleaner: registerController.complementController.clear,
                      // visible: registerController.isUsernameValid,
                      onChanged: registerController.setComplement,
                    ),
                  ),
                ],
              ),
              Field(
                label: 'District',
                controller: registerController.districtController,
                cleaner: registerController.districtController.clear,
                // visible: registerController.isUsernameValid,
                onChanged: registerController.setDistrict,
              ),
              Field(
                label: 'City',
                controller: registerController.cityController,
                cleaner: registerController.cityController.clear,
                // visible: registerController.isUsernameValid,
                onChanged: registerController.setCity,
              ),
              Field(
                label: 'State',
                controller: registerController.stateController,
                cleaner: registerController.stateController.clear,
                // visible: registerController.isUsernameValid,
                onChanged: registerController.setState,
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
        bottomSheet: Container(
          color: registerController.isValidAll ? Colors.green : Colors.grey,
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            child: Row(
              children: <Widget>[
                Expanded(flex: 3, child: Icon(Icons.check)),
                Expanded(
                  flex: 100,
                  child: Text(
                    'register user'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            onTap: registerController.isValidAll
                ? () {
                    registerController.addUser();
                    Modular.to.pop();
                  }
                : null,
          ),
        ));
  }
}
