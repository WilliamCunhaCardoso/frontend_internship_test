// import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:frontent_internship_test/src/app/pages/register/register_presenter.dart';
import 'package:frontent_internship_test/src/domain/entities/user_model.dart';

class RegisterController extends Controller {
// //* Strings
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
  // * Vars
  // TextEditingController usernameController;
  // TextEditingController emailController;
  // TextEditingController streetController;
  // TextEditingController numberController;
  // TextEditingController complementController;
  // TextEditingController districtController;
  // TextEditingController cityController;
  // TextEditingController stateController;

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
    // usernameController = TextEditingController(text: '');
    // emailController = TextEditingController(text: '');
    // streetController = TextEditingController(text: '');
    // numberController = TextEditingController(text: '');
    // complementController = TextEditingController(text: '');
    // districtController = TextEditingController(text: '');
    // cityController = TextEditingController(text: '');
    // stateController = TextEditingController(text: '');
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
    var user = 
    UserModel(
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
    // UserModel(
    //     userId: '02',
    //     username: 'Teste Case',
    //     email: 'test.case@email.com',
    //     phone: '+55 (85) 9.8865-4321',
    //     birth: '09/11/1998',
    //     cpf: '508.431.550-94',
    //     cep: '60810-060',
    //     street: 'Av. Washington Soares',
    //     number: 85,
    //     complement: 'Loja 85',
    //     district: 'Edson Queiroz',
    //     city: 'Fortaleza',
    //     state: 'Ceará',
    //   );

    registerPresenter.addUser(user);
  }
}
// //* Controllers
// TextEditingController usernameController = TextEditingController(text: '');
// TextEditingController emailController = TextEditingController(text: '');
// MaskedTextController phoneController =
//     MaskedTextController(text: '', mask: '+00 (00) 0 0000-0000');
// MaskedTextController birthController =
//     MaskedTextController(text: '', mask: '00/00/0000');
// MaskedTextController cpfController =
//     MaskedTextController(text: '', mask: '000.000.000-00');
// MaskedTextController cepController =
//     MaskedTextController(text: '', mask: '00000-000');
// TextEditingController streetController = TextEditingController(text: '');
// TextEditingController numberController = TextEditingController(text: '');
// TextEditingController complementController = TextEditingController(text: '');
// TextEditingController districtController = TextEditingController(text: '');
// TextEditingController cityController = TextEditingController(text: '');
// TextEditingController stateController = TextEditingController(text: '');

// //* Setter;

// //* Validators | Functions
// String validateUsername() {
//   if (username.isEmpty || username == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateEmail() {
//   if (email.isEmpty || email == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validatePhone() {
//   if (phone.isEmpty || phone == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateBirth() {
//   if (birth.isEmpty || birth == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateCPF() {
//   if (cpf.isEmpty || cpf == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateCEP() {
//   if (cep.isEmpty || cep == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateStreet() {
//   if (street.isEmpty || street == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateNumber() {
//   if (number.isEmpty || number == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateComplement() {
//   if (complement.isEmpty || complement == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateDistrict() {
//   if (district.isEmpty || district == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateCity() {
//   if (city.isEmpty || city == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// String validateState() {
//   if (state.isEmpty || state == null) {
//     return 'Preencha o campo';
//   }
//   return null;
// }

// //* Validators | Computed
// @computed
// bool get isUsernameValid {
//   return validateUsername() == null;
// }

// @computed
// bool get isEmailValid {
//   return validateEmail() == null;
// }

// @computed
// bool get isPhoneValid {
//   return validatePhone() == null;
// }

// @computed
// bool get isBirthValid {
//   return validateBirth() == null;
// }

// @computed
// bool get isCPFValid {
//   return validateCPF() == null;
// }

// @computed
// bool get isCEPValid {
//   return validateCEP() == null;
// }

// @computed
// bool get isStreetValid {
//   return validateStreet() == null;
// }

// @computed
// bool get isNumberValid {
//   return validateNumber() == null;
// }

// @computed
// bool get isComplementValid {
//   return validateComplement() == null;
// }

// @computed
// bool get isDistrictValid {
//   return validateDistrict() == null;
// }

// @computed
// bool get isCityValid {
//   return validateCity() == null;
// }

// @computed
// bool get isStateValid {
//   return validateState() == null;
// }

// //* Geral Validator
// @computed
// bool get isValidAll {
//   return (validateUsername() == null &&
//       validateEmail() == null &&
//       validatePhone() == null &&
//       validateBirth() == null &&
//       validateCPF() == null &&
//       validateCEP() == null &&
//       validateStreet() == null &&
//       validateNumber() == null &&
//       validateComplement() == null &&
//       validateDistrict() == null &&
//       validateCity() == null &&
//       validateState() == null);
// }

// @action
// void cleanControllers() {
//   usernameController.clear();
//   emailController.clear();
//   phoneController.clear();
//   birthController.clear();
//   cpfController.clear();
//   cepController.clear();
//   streetController.clear();
//   numberController.clear();
//   complementController.clear();
//   districtController.clear();
//   cityController.clear();
//   stateController.clear();
// }

// var userController = Modular.get<UserController>();

// void addUser() {
//   //* Put all data into a temporary var
//   var user = UserModel(
//     username: username,
//     email: email,
//     phone: phone,
//     birth: birth,
//     cpf: cpf,
//     cep: cep,
//     street: street,
//     number: int.parse(number),
//     complement: complement,
//     district: district,
//     city: city,
//     state: state,
//   );
//   userController.addUser(user);
//   cleanControllers();
// }
