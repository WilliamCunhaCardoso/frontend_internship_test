import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/register/widgets/bottom_sheet.dart';
import 'package:frontent_internship_test/app/modules/user/user_controller.dart';
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
          icon: Icon(Icons.navigate_before), //* adapt icon to prototype
          onPressed: () => Modular.to.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: <Widget>[
            //* Field parametrized in the widget Field
            //* All must stay inside an observer to update values
            //* all fields contains a controller, a cleaner function controller, save information function, label and visible switch to icon
            //* Personal Fields
            TitleSession(text: 'personal data'),
            Observer(
              builder: (_) => Field(
                label: 'Name',
                controller: registerController.usernameController,
                onChanged: registerController.setUsername,
                cleaner: registerController.usernameController.clear,
                visible: registerController.isUsernameValid,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'Email',
                controller: registerController.emailController,
                onChanged: registerController.setEmail,
                cleaner: registerController.emailController.clear,
                visible: registerController.isEmailValid,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'Phone',
                controller: registerController.phoneController,
                cleaner: registerController.phoneController.clear,
                onChanged: registerController.setPhone,
                visible: registerController.isPhoneValid,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'Date of Birth',
                controller: registerController.birthController,
                cleaner: registerController.birthController.clear,
                onChanged: registerController.setBirth,
                visible: registerController.isBirthValid,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'CPF',
                controller: registerController.cpfController,
                cleaner: registerController.cpfController.clear,
                onChanged: registerController.setCPF,
                visible: registerController.isCPFValid,
              ),
            ),

            //* Address fields
            TitleSession(text: 'address data'),
            Observer(
              builder: (_) => Field(
                label: 'CEP',
                controller: registerController.cepController,
                cleaner: registerController.cpfController.clear,
                onChanged: registerController.setCEP,
                visible: registerController.isCEPValid,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'Street',
                controller: registerController.streetController,
                cleaner: registerController.cpfController.clear,
                visible: registerController.isStreetValid,
                onChanged: registerController.setStreet,
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Observer(
                    builder: (_) => Field(
                      label: 'Number',
                      controller: registerController.numberController,
                      cleaner: registerController.numberController.clear,
                      visible: registerController.isNumberValid,
                      onChanged: registerController.setNumber,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Observer(
                    builder: (_) => Field(
                      label: 'Complement',
                      controller: registerController.complementController,
                      cleaner: registerController.complementController.clear,
                      visible: registerController.isComplementValid,
                      onChanged: registerController.setComplement,
                    ),
                  ),
                ),
              ],
            ),
            Observer(
              builder: (_) => Field(
                label: 'District',
                controller: registerController.districtController,
                cleaner: registerController.districtController.clear,
                visible: registerController.isDistrictValid,
                onChanged: registerController.setDistrict,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'City',
                controller: registerController.cityController,
                cleaner: registerController.cityController.clear,
                visible: registerController.isCityValid,
                onChanged: registerController.setCity,
              ),
            ),
            Observer(
              builder: (_) => Field(
                label: 'State',
                controller: registerController.stateController,
                cleaner: registerController.stateController.clear,
                visible: registerController.isStateValid,
                onChanged: registerController.setState,
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
      //* Paraetrized bottom sheet
      //* it switches the color between disabled and enabled
      //* needs observer to update boolean value
      bottomSheet: Observer(
        builder: (_) => CustomBottomSheet(
          colors: registerController.isValidAll ? Colors.green : Colors.grey,
          function: registerController.addUser, //* add user function
          router: Modular.to.pop,
          functionEnable: registerController.isValidAll,
        ),
      ),
    );
  }
}
