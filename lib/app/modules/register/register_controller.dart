// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/user/user_controller.dart';
import 'package:frontent_internship_test/app/modules/user/user_model.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  //* Controllers
  @observable
  TextEditingController usernameController = TextEditingController(text: '');
  @observable
  TextEditingController emailController = TextEditingController(text: '');
  @observable
  MaskedTextController phoneController =
      MaskedTextController(text: '', mask: '+00 (00) 0 0000-0000');
  @observable
  MaskedTextController birthController =
      MaskedTextController(text: '', mask: '00/00/0000');
  @observable
  MaskedTextController cpfController =
      MaskedTextController(text: '', mask: '000.000.000-00');
  @observable
  MaskedTextController cepController =
      MaskedTextController(text: '', mask: '00000-000');
  @observable
  TextEditingController streetController = TextEditingController(text: '');
  @observable
  TextEditingController numberController = TextEditingController(text: '');
  @observable
  TextEditingController complementController = TextEditingController(text: '');
  @observable
  TextEditingController districtController = TextEditingController(text: '');
  @observable
  TextEditingController cityController = TextEditingController(text: '');
  @observable
  TextEditingController stateController = TextEditingController(text: '');

  //* Strings
  @observable
  String username = '';
  @observable
  String email = '';
  @observable
  String phone = '';
  @observable
  String birth = '';
  @observable
  String cpf = '';
  @observable
  String cep = '';
  @observable
  String street = '';
  @observable
  String number = '';
  @observable
  String complement = '';
  @observable
  String district = '';
  @observable
  String city = '';
  @observable
  String state = '';

  //* Setters
  @action
  setUsername(String value) => username = value;
  @action
  setEmail(String value) => email = value;
  @action
  setPhone(String value) => phone = value;
  @action
  setBirth(String value) => birth = value;
  @action
  setCPF(String value) => cpf = value;
  @action
  setCEP(String value) => cep = value;
  @action
  setStreet(String value) => street = value;
  @action
  setNumber(String value) => number = value;
  @action
  setComplement(String value) => complement = value;
  @action
  setDistrict(String value) => district = value;
  @action
  setCity(String value) => city = value;
  @action
  setState(String value) => state = value;

  //* Validators | Functions
  String validateUsername() {
    if (username.isEmpty || username == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateEmail() {
    if (email.isEmpty || email == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validatePhone() {
    if (phone.isEmpty || phone == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateBirth() {
    if (birth.isEmpty || birth == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateCPF() {
    if (cpf.isEmpty || cpf == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateCEP() {
    if (cep.isEmpty || cep == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateStreet() {
    if (street.isEmpty || street == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateNumber() {
    if (number.isEmpty || number == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateComplement() {
    if (complement.isEmpty || complement == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateDistrict() {
    if (district.isEmpty || district == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateCity() {
    if (city.isEmpty || city == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  String validateState() {
    if (state.isEmpty || state == null) {
      return 'Preencha o campo';
    }
    return null;
  }

  //* Validators | Computed
  @computed
  bool get isUsernameValid {
    return validateUsername() == null;
  }

  @computed
  bool get isEmailValid {
    return validateEmail() == null;
  }

  @computed
  bool get isPhoneValid {
    return validatePhone() == null;
  }

  @computed
  bool get isBirthValid {
    return validateBirth() == null;
  }

  @computed
  bool get isCPFValid {
    return validateCPF() == null;
  }

  @computed
  bool get isCEPValid {
    return validateCEP() == null;
  }

  @computed
  bool get isStreetValid {
    return validateStreet() == null;
  }

  @computed
  bool get isNumberValid {
    return validateNumber() == null;
  }

  @computed
  bool get isComplementValid {
    return validateComplement() == null;
  }

  @computed
  bool get isDistrictValid {
    return validateDistrict() == null;
  }

  @computed
  bool get isCityValid {
    return validateCity() == null;
  }

  @computed
  bool get isStateValid {
    return validateState() == null;
  }

  //* Geral Validator
  @computed
  bool get isValidAll {
    return (validateUsername() == null &&
        validateEmail() == null &&
        validatePhone() == null &&
        validateBirth() == null &&
        validateCPF() == null &&
        validateCEP() == null &&
        validateStreet() == null &&
        validateNumber() == null &&
        validateComplement() == null &&
        validateDistrict() == null &&
        validateCity() == null &&
        validateState() == null);
  }

  @action
  void cleanControllers() {
    usernameController.clear();
    emailController.clear();
    phoneController.clear();
    birthController.clear();
    cpfController.clear();
    cepController.clear();
    streetController.clear();
    numberController.clear();
    complementController.clear();
    districtController.clear();
    cityController.clear();
    stateController.clear();
  }

  var userController = Modular.get<UserController>();

  void addUser() {
    //* Put all data into a temporary var
    var user = UserModel(
      username: username,
      email: email,
      phone: phone,
      birth: birth,
      cpf: cpf,
      cep: cep,
      street: street,
      number: int.parse(number),
      complement: complement,
      district: district,
      city: city,
      state: state,
    );
    userController.addUser(user);
    cleanControllers();
  }
}
