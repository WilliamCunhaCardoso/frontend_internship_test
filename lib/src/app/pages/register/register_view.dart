import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:frontent_internship_test/src/app/widgets/title_session.dart';

import 'register_controller.dart';

class RegisterPage extends View {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ViewState<RegisterPage, RegisterController> {
  _RegisterPageState() : super(RegisterController());

  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        key: globalKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: 
          ListView(
            children: <Widget>[
              //* Field parametrized in the widget Field
              //* all fields contains a controller, a cleaner function controller, save information function, label and visible switch to icon
              //* Personal Fields
              TitleSession(text: 'personal data'),
              // FormBuilder(
              //   child: Column(
              //     children: <Widget>[
                    // FormBuilderTextField(
                    //   attribute: 'username',
                    //   decoration: InputDecoration(hintText: 'Nome'),
                    //   validators: [
                    //     FormBuilderValidators.min(1),
                    //     FormBuilderValidators.max(10),
                    //     FormBuilderValidators.minLength(2),
                    //   ],
                    // ),
              //     ],
              //   ),
              // ),
              // Field(
              //   label: 'Name',
              //   controller: registerController.usernameController,
              //   onChanged: registerController.setUsername,
              //   cleaner: registerController.usernameController.clear,
              //   visible: registerController.isUsernameValid,
              // ),

              // Field(
              //   label: 'Email',
              //   controller: registerController.emailController,
              //   onChanged: registerController.setEmail,
              //   cleaner: registerController.emailController.clear,
              //   visible: registerController.isEmailValid,
              // ),

              // Field(
              //   label: 'Phone',
              //   controller: registerController.phoneController,
              //   cleaner: registerController.phoneController.clear,
              //   onChanged: registerController.setPhone,
              //   visible: registerController.isPhoneValid,
              // ),

              // Field(
              //   label: 'Date of Birth',
              //   controller: registerController.birthController,
              //   cleaner: registerController.birthController.clear,
              //   onChanged: registerController.setBirth,
              //   visible: registerController.isBirthValid,
              // ),

              // Field(
              //   label: 'CPF',
              //   controller: registerController.cpfController,
              //   cleaner: registerController.cpfController.clear,
              //   onChanged: registerController.setCPF,
              //   visible: registerController.isCPFValid,
              // ),

              // //* Address fields
              // TitleSession(text: 'address data'),

              // Field(
              //   label: 'CEP',
              //   controller: registerController.cepController,
              //   cleaner: registerController.cpfController.clear,
              //   onChanged: registerController.setCEP,
              //   visible: registerController.isCEPValid,
              // ),

              // Field(
              //   label: 'Street',
              //   controller: registerController.streetController,
              //   cleaner: registerController.cpfController.clear,
              //   visible: registerController.isStreetValid,
              //   onChanged: registerController.setStreet,
              // ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       flex: 2,
              //       child: Field(
              //         label: 'Number',
              //         controller: registerController.numberController,
              //         cleaner: registerController.numberController.clear,
              //         visible: registerController.isNumberValid,
              //         onChanged: registerController.setNumber,
              //       ),
              //     ),
              //     SizedBox(width: 10),
              //     Expanded(
              //       flex: 3,
              //       child: Field(
              //         label: 'Complement',
              //         controller: registerController.complementController,
              //         cleaner: registerController.complementController.clear,
              //         visible: registerController.isComplementValid,
              //         onChanged: registerController.setComplement,
              //       ),
              //     ),
              //   ],
              // ),

              // Field(
              //   label: 'District',
              //   controller: registerController.districtController,
              //   cleaner: registerController.districtController.clear,
              //   visible: registerController.isDistrictValid,
              //   onChanged: registerController.setDistrict,
              // ),

              // Field(
              //   label: 'City',
              //   controller: registerController.cityController,
              //   cleaner: registerController.cityController.clear,
              //   visible: registerController.isCityValid,
              //   onChanged: registerController.setCity,
              // ),

              // Field(
              //   label: 'State',
              //   controller: registerController.stateController,
              //   cleaner: registerController.stateController.clear,
              //   visible: registerController.isStateValid,
              //   onChanged: registerController.setState,
              // ),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}

// CustomBottomSheet(
//   colors: registerController.isValidAll ? Colors.green : Colors.grey,
//   function: registerController.addUser,
//   router: Modular.to.pop,
//   functionEnable: registerController.isValidAll,
// ),
