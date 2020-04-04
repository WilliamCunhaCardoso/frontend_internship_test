import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:frontent_internship_test/src/app/widgets/title_session.dart';
import 'package:frontent_internship_test/src/data/repositories/data_user_repository.dart';

import 'register_controller.dart';

class RegisterPage extends View {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ViewState<RegisterPage, RegisterController> {
  _RegisterPageState() : super(RegisterController(DataUsersRepository()));
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget buildPage() {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        key: globalKey,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: <Widget>[
              //* Field parametrized in the widget Field
              //* all fields contains a controller, a cleaner function controller, save information function, label and visible switch to icon
              //* Personal Fields
              FormBuilder(
                key: _fbKey,
                autovalidate: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TitleSession(text: 'personal data'),
                    FormBuilderTextField(
                      attribute: 'username',
                      decoration: InputDecoration(hintText: 'Name'),
                      validators: [
                        FormBuilderValidators.min(1),
                        FormBuilderValidators.max(10),
                        FormBuilderValidators.minLength(2),
                      ],
                      onChanged: (value) => controller.setUsername(value),
                    ),
                    FormBuilderTextField(
                      attribute: 'email',
                      decoration: InputDecoration(hintText: 'Email'),
                      onChanged: (value) => controller.setEmail(value),
                      validators: [FormBuilderValidators.email()],
                    ),
                    FormBuilderTextField(
                      attribute: 'phone',
                      decoration: InputDecoration(hintText: 'Phone'),
                      onChanged: (value) => controller.setPhone(value),
                      validators: [
                        FormBuilderValidators.numeric(),
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'birth',
                      decoration: InputDecoration(hintText: 'Birth'),
                      onChanged: (value) => controller.setBirth(value),
                      validators: [
                        FormBuilderValidators.numeric(),
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'cpf',
                      decoration: InputDecoration(hintText: 'CPF'),
                      onChanged: (value) => controller.setCPF(value),
                      validators: [
                        FormBuilderValidators.numeric(),
                      ],
                    ),
                    TitleSession(text: 'address data'),
                    FormBuilderTextField(
                      attribute: 'cep',
                      decoration: InputDecoration(hintText: 'CEP'),
                      onChanged: (value) => controller.setCEP(value),
                      validators: [
                        FormBuilderValidators.numeric(),
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'street',
                      decoration: InputDecoration(hintText: 'Street'),
                      onChanged: (value) => controller.setStreet(value),
                      validators: [
                        FormBuilderValidators.min(3),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: FormBuilder(
                            child: Column(
                              children: <Widget>[
                                FormBuilderTextField(
                                  attribute: 'number',
                                  decoration:
                                      InputDecoration(hintText: 'Number'),
                                  onChanged: (value) =>
                                      controller.setNumber(value),
                                  validators: [
                                    FormBuilderValidators.numeric(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: FormBuilder(
                            child: Column(
                              children: <Widget>[
                                FormBuilderTextField(
                                  attribute: 'complement',
                                  decoration:
                                      InputDecoration(hintText: 'Complement'),
                                  onChanged: (value) =>
                                      controller.setComplement(value),
                                  validators: [],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'district',
                      decoration: InputDecoration(hintText: 'District'),
                      onChanged: (value) => controller.setDistrict(value),
                      validators: [
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'city',
                      decoration: InputDecoration(hintText: 'City'),
                      onChanged: (value) => controller.setCity(value),
                      validators: [
                      ],
                    ),
                    FormBuilderTextField(
                      attribute: 'state',
                      decoration: InputDecoration(hintText: 'State'),
                      onChanged: (value) => controller.setState(value),
                      validators: [
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.addUser(),
          child: Icon(Icons.add),
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
