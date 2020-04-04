// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:frontent_internship_test/src/app/pages/register/register_presenter.dart';
import 'package:frontent_internship_test/src/domain/entities/user_model.dart';

class RegisterController extends Controller {
  //* Strings
  String username;
  String email;
  String phone;
  String birth;
  String cpf;
  String cep;
  String street;
  String number;
  String complement;
  String district;
  String city;
  String state;

  final RegisterPresenter registerPresenter;

  RegisterController(usersRepo)
      : registerPresenter = RegisterPresenter(usersRepo),
        super();

  // * Initializing Listeners
  @override
  void initListeners() {
    username = '';
    email = '';
    phone = '';
    birth = '';
    cpf = '';
    cep = '';
    street = '';
    number = '';
    complement = '';
    district = '';
    city = '';
    state = '';

    registerPresenter.addUserOnNext = () {
      refreshUI(); // Refreshes the UI manually
    };

    registerPresenter.addUserOnComplete = () {
      print('user added');
      refreshUI(); // Refreshes the UI manually
    };

    registerPresenter.addUserOnError = (e) {
      print('Could not add user.');
      ScaffoldState state = getState();
      state.showSnackBar(SnackBar(content: Text(e.message)));
      refreshUI(); // Refreshes the UI manually
    };
  }

  // * Setters
  setUsername(String value) => username = value;
  setEmail(String value) => email = value;
  setPhone(String value) => phone = value;
  setBirth(String value) => birth = value;
  setCPF(String value) => cpf = value;
  setCEP(String value) => cep = value;
  setStreet(String value) => street = value;
  setNumber(String value) => number = value;
  setComplement(String value) => complement = value;
  setDistrict(String value) => district = value;
  setCity(String value) => city = value;
  setState(String value) => state = value;

  void addUser() {
    var user = UserModel(
      userId: '02',
      username: this.username,
      email: this.email,
      phone: this.phone,
      birth: this.birth,
      cpf: this.cpf,
      cep: this.cep,
      street: this.street,
      number: int.parse(this.number),
      complement: this.complement,
      district: this.district,
      city: this.city,
      state: this.state,
    );

    registerPresenter.addUser(user);
  }

  bool checkIsValid() {
    if (username == '' ||
        email == '' ||
        phone == '' ||
        birth == '' ||
        cpf == '' ||
        cep == '' ||
        street == '' ||
        number == '' ||
        complement == '' ||
        district == '' ||
        city == '' ||
        state == '') {
      return false;
    }
    return true;
  }

    @override
  void onResumed() {
    print("On resumed");
    super.onResumed();
  }

  @override
  void dispose() {
    registerPresenter.dispose(); // don't forget to dispose of the presenter
    super.dispose();
  }
}
