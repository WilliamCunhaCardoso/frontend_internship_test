// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on _RegisterControllerBase, Store {
  Computed<bool> _$isUsernameValidComputed;

  @override
  bool get isUsernameValid => (_$isUsernameValidComputed ??=
          Computed<bool>(() => super.isUsernameValid))
      .value;
  Computed<bool> _$isEmailValidComputed;

  @override
  bool get isEmailValid =>
      (_$isEmailValidComputed ??= Computed<bool>(() => super.isEmailValid))
          .value;
  Computed<bool> _$isPhoneValidComputed;

  @override
  bool get isPhoneValid =>
      (_$isPhoneValidComputed ??= Computed<bool>(() => super.isPhoneValid))
          .value;
  Computed<bool> _$isBirthValidComputed;

  @override
  bool get isBirthValid =>
      (_$isBirthValidComputed ??= Computed<bool>(() => super.isBirthValid))
          .value;
  Computed<bool> _$isCPFValidComputed;

  @override
  bool get isCPFValid =>
      (_$isCPFValidComputed ??= Computed<bool>(() => super.isCPFValid)).value;
  Computed<bool> _$isCEPValidComputed;

  @override
  bool get isCEPValid =>
      (_$isCEPValidComputed ??= Computed<bool>(() => super.isCEPValid)).value;
  Computed<bool> _$isStreetValidComputed;

  @override
  bool get isStreetValid =>
      (_$isStreetValidComputed ??= Computed<bool>(() => super.isStreetValid))
          .value;
  Computed<bool> _$isNumberValidComputed;

  @override
  bool get isNumberValid =>
      (_$isNumberValidComputed ??= Computed<bool>(() => super.isNumberValid))
          .value;
  Computed<bool> _$isComplementValidComputed;

  @override
  bool get isComplementValid => (_$isComplementValidComputed ??=
          Computed<bool>(() => super.isComplementValid))
      .value;
  Computed<bool> _$isDistrictValidComputed;

  @override
  bool get isDistrictValid => (_$isDistrictValidComputed ??=
          Computed<bool>(() => super.isDistrictValid))
      .value;
  Computed<bool> _$isCityValidComputed;

  @override
  bool get isCityValid =>
      (_$isCityValidComputed ??= Computed<bool>(() => super.isCityValid)).value;
  Computed<bool> _$isStateValidComputed;

  @override
  bool get isStateValid =>
      (_$isStateValidComputed ??= Computed<bool>(() => super.isStateValid))
          .value;
  Computed<bool> _$isValidAllComputed;

  @override
  bool get isValidAll =>
      (_$isValidAllComputed ??= Computed<bool>(() => super.isValidAll)).value;

  final _$usernameControllerAtom =
      Atom(name: '_RegisterControllerBase.usernameController');

  @override
  TextEditingController get usernameController {
    _$usernameControllerAtom.context
        .enforceReadPolicy(_$usernameControllerAtom);
    _$usernameControllerAtom.reportObserved();
    return super.usernameController;
  }

  @override
  set usernameController(TextEditingController value) {
    _$usernameControllerAtom.context.conditionallyRunInAction(() {
      super.usernameController = value;
      _$usernameControllerAtom.reportChanged();
    }, _$usernameControllerAtom, name: '${_$usernameControllerAtom.name}_set');
  }

  final _$emailControllerAtom =
      Atom(name: '_RegisterControllerBase.emailController');

  @override
  TextEditingController get emailController {
    _$emailControllerAtom.context.enforceReadPolicy(_$emailControllerAtom);
    _$emailControllerAtom.reportObserved();
    return super.emailController;
  }

  @override
  set emailController(TextEditingController value) {
    _$emailControllerAtom.context.conditionallyRunInAction(() {
      super.emailController = value;
      _$emailControllerAtom.reportChanged();
    }, _$emailControllerAtom, name: '${_$emailControllerAtom.name}_set');
  }

  final _$phoneControllerAtom =
      Atom(name: '_RegisterControllerBase.phoneController');

  @override
  MaskedTextController get phoneController {
    _$phoneControllerAtom.context.enforceReadPolicy(_$phoneControllerAtom);
    _$phoneControllerAtom.reportObserved();
    return super.phoneController;
  }

  @override
  set phoneController(MaskedTextController value) {
    _$phoneControllerAtom.context.conditionallyRunInAction(() {
      super.phoneController = value;
      _$phoneControllerAtom.reportChanged();
    }, _$phoneControllerAtom, name: '${_$phoneControllerAtom.name}_set');
  }

  final _$birthControllerAtom =
      Atom(name: '_RegisterControllerBase.birthController');

  @override
  MaskedTextController get birthController {
    _$birthControllerAtom.context.enforceReadPolicy(_$birthControllerAtom);
    _$birthControllerAtom.reportObserved();
    return super.birthController;
  }

  @override
  set birthController(MaskedTextController value) {
    _$birthControllerAtom.context.conditionallyRunInAction(() {
      super.birthController = value;
      _$birthControllerAtom.reportChanged();
    }, _$birthControllerAtom, name: '${_$birthControllerAtom.name}_set');
  }

  final _$cpfControllerAtom =
      Atom(name: '_RegisterControllerBase.cpfController');

  @override
  MaskedTextController get cpfController {
    _$cpfControllerAtom.context.enforceReadPolicy(_$cpfControllerAtom);
    _$cpfControllerAtom.reportObserved();
    return super.cpfController;
  }

  @override
  set cpfController(MaskedTextController value) {
    _$cpfControllerAtom.context.conditionallyRunInAction(() {
      super.cpfController = value;
      _$cpfControllerAtom.reportChanged();
    }, _$cpfControllerAtom, name: '${_$cpfControllerAtom.name}_set');
  }

  final _$cepControllerAtom =
      Atom(name: '_RegisterControllerBase.cepController');

  @override
  MaskedTextController get cepController {
    _$cepControllerAtom.context.enforceReadPolicy(_$cepControllerAtom);
    _$cepControllerAtom.reportObserved();
    return super.cepController;
  }

  @override
  set cepController(MaskedTextController value) {
    _$cepControllerAtom.context.conditionallyRunInAction(() {
      super.cepController = value;
      _$cepControllerAtom.reportChanged();
    }, _$cepControllerAtom, name: '${_$cepControllerAtom.name}_set');
  }

  final _$streetControllerAtom =
      Atom(name: '_RegisterControllerBase.streetController');

  @override
  TextEditingController get streetController {
    _$streetControllerAtom.context.enforceReadPolicy(_$streetControllerAtom);
    _$streetControllerAtom.reportObserved();
    return super.streetController;
  }

  @override
  set streetController(TextEditingController value) {
    _$streetControllerAtom.context.conditionallyRunInAction(() {
      super.streetController = value;
      _$streetControllerAtom.reportChanged();
    }, _$streetControllerAtom, name: '${_$streetControllerAtom.name}_set');
  }

  final _$numberControllerAtom =
      Atom(name: '_RegisterControllerBase.numberController');

  @override
  TextEditingController get numberController {
    _$numberControllerAtom.context.enforceReadPolicy(_$numberControllerAtom);
    _$numberControllerAtom.reportObserved();
    return super.numberController;
  }

  @override
  set numberController(TextEditingController value) {
    _$numberControllerAtom.context.conditionallyRunInAction(() {
      super.numberController = value;
      _$numberControllerAtom.reportChanged();
    }, _$numberControllerAtom, name: '${_$numberControllerAtom.name}_set');
  }

  final _$complementControllerAtom =
      Atom(name: '_RegisterControllerBase.complementController');

  @override
  TextEditingController get complementController {
    _$complementControllerAtom.context
        .enforceReadPolicy(_$complementControllerAtom);
    _$complementControllerAtom.reportObserved();
    return super.complementController;
  }

  @override
  set complementController(TextEditingController value) {
    _$complementControllerAtom.context.conditionallyRunInAction(() {
      super.complementController = value;
      _$complementControllerAtom.reportChanged();
    }, _$complementControllerAtom,
        name: '${_$complementControllerAtom.name}_set');
  }

  final _$districtControllerAtom =
      Atom(name: '_RegisterControllerBase.districtController');

  @override
  TextEditingController get districtController {
    _$districtControllerAtom.context
        .enforceReadPolicy(_$districtControllerAtom);
    _$districtControllerAtom.reportObserved();
    return super.districtController;
  }

  @override
  set districtController(TextEditingController value) {
    _$districtControllerAtom.context.conditionallyRunInAction(() {
      super.districtController = value;
      _$districtControllerAtom.reportChanged();
    }, _$districtControllerAtom, name: '${_$districtControllerAtom.name}_set');
  }

  final _$cityControllerAtom =
      Atom(name: '_RegisterControllerBase.cityController');

  @override
  TextEditingController get cityController {
    _$cityControllerAtom.context.enforceReadPolicy(_$cityControllerAtom);
    _$cityControllerAtom.reportObserved();
    return super.cityController;
  }

  @override
  set cityController(TextEditingController value) {
    _$cityControllerAtom.context.conditionallyRunInAction(() {
      super.cityController = value;
      _$cityControllerAtom.reportChanged();
    }, _$cityControllerAtom, name: '${_$cityControllerAtom.name}_set');
  }

  final _$stateControllerAtom =
      Atom(name: '_RegisterControllerBase.stateController');

  @override
  TextEditingController get stateController {
    _$stateControllerAtom.context.enforceReadPolicy(_$stateControllerAtom);
    _$stateControllerAtom.reportObserved();
    return super.stateController;
  }

  @override
  set stateController(TextEditingController value) {
    _$stateControllerAtom.context.conditionallyRunInAction(() {
      super.stateController = value;
      _$stateControllerAtom.reportChanged();
    }, _$stateControllerAtom, name: '${_$stateControllerAtom.name}_set');
  }

  final _$usernameAtom = Atom(name: '_RegisterControllerBase.username');

  @override
  String get username {
    _$usernameAtom.context.enforceReadPolicy(_$usernameAtom);
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.conditionallyRunInAction(() {
      super.username = value;
      _$usernameAtom.reportChanged();
    }, _$usernameAtom, name: '${_$usernameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_RegisterControllerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$phoneAtom = Atom(name: '_RegisterControllerBase.phone');

  @override
  String get phone {
    _$phoneAtom.context.enforceReadPolicy(_$phoneAtom);
    _$phoneAtom.reportObserved();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.context.conditionallyRunInAction(() {
      super.phone = value;
      _$phoneAtom.reportChanged();
    }, _$phoneAtom, name: '${_$phoneAtom.name}_set');
  }

  final _$birthAtom = Atom(name: '_RegisterControllerBase.birth');

  @override
  String get birth {
    _$birthAtom.context.enforceReadPolicy(_$birthAtom);
    _$birthAtom.reportObserved();
    return super.birth;
  }

  @override
  set birth(String value) {
    _$birthAtom.context.conditionallyRunInAction(() {
      super.birth = value;
      _$birthAtom.reportChanged();
    }, _$birthAtom, name: '${_$birthAtom.name}_set');
  }

  final _$cpfAtom = Atom(name: '_RegisterControllerBase.cpf');

  @override
  String get cpf {
    _$cpfAtom.context.enforceReadPolicy(_$cpfAtom);
    _$cpfAtom.reportObserved();
    return super.cpf;
  }

  @override
  set cpf(String value) {
    _$cpfAtom.context.conditionallyRunInAction(() {
      super.cpf = value;
      _$cpfAtom.reportChanged();
    }, _$cpfAtom, name: '${_$cpfAtom.name}_set');
  }

  final _$cepAtom = Atom(name: '_RegisterControllerBase.cep');

  @override
  String get cep {
    _$cepAtom.context.enforceReadPolicy(_$cepAtom);
    _$cepAtom.reportObserved();
    return super.cep;
  }

  @override
  set cep(String value) {
    _$cepAtom.context.conditionallyRunInAction(() {
      super.cep = value;
      _$cepAtom.reportChanged();
    }, _$cepAtom, name: '${_$cepAtom.name}_set');
  }

  final _$streetAtom = Atom(name: '_RegisterControllerBase.street');

  @override
  String get street {
    _$streetAtom.context.enforceReadPolicy(_$streetAtom);
    _$streetAtom.reportObserved();
    return super.street;
  }

  @override
  set street(String value) {
    _$streetAtom.context.conditionallyRunInAction(() {
      super.street = value;
      _$streetAtom.reportChanged();
    }, _$streetAtom, name: '${_$streetAtom.name}_set');
  }

  final _$numberAtom = Atom(name: '_RegisterControllerBase.number');

  @override
  String get number {
    _$numberAtom.context.enforceReadPolicy(_$numberAtom);
    _$numberAtom.reportObserved();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.context.conditionallyRunInAction(() {
      super.number = value;
      _$numberAtom.reportChanged();
    }, _$numberAtom, name: '${_$numberAtom.name}_set');
  }

  final _$complementAtom = Atom(name: '_RegisterControllerBase.complement');

  @override
  String get complement {
    _$complementAtom.context.enforceReadPolicy(_$complementAtom);
    _$complementAtom.reportObserved();
    return super.complement;
  }

  @override
  set complement(String value) {
    _$complementAtom.context.conditionallyRunInAction(() {
      super.complement = value;
      _$complementAtom.reportChanged();
    }, _$complementAtom, name: '${_$complementAtom.name}_set');
  }

  final _$districtAtom = Atom(name: '_RegisterControllerBase.district');

  @override
  String get district {
    _$districtAtom.context.enforceReadPolicy(_$districtAtom);
    _$districtAtom.reportObserved();
    return super.district;
  }

  @override
  set district(String value) {
    _$districtAtom.context.conditionallyRunInAction(() {
      super.district = value;
      _$districtAtom.reportChanged();
    }, _$districtAtom, name: '${_$districtAtom.name}_set');
  }

  final _$cityAtom = Atom(name: '_RegisterControllerBase.city');

  @override
  String get city {
    _$cityAtom.context.enforceReadPolicy(_$cityAtom);
    _$cityAtom.reportObserved();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.context.conditionallyRunInAction(() {
      super.city = value;
      _$cityAtom.reportChanged();
    }, _$cityAtom, name: '${_$cityAtom.name}_set');
  }

  final _$stateAtom = Atom(name: '_RegisterControllerBase.state');

  @override
  String get state {
    _$stateAtom.context.enforceReadPolicy(_$stateAtom);
    _$stateAtom.reportObserved();
    return super.state;
  }

  @override
  set state(String value) {
    _$stateAtom.context.conditionallyRunInAction(() {
      super.state = value;
      _$stateAtom.reportChanged();
    }, _$stateAtom, name: '${_$stateAtom.name}_set');
  }

  final _$_RegisterControllerBaseActionController =
      ActionController(name: '_RegisterControllerBase');

  @override
  dynamic setUsername(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setUsername(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPhone(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setPhone(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setBirth(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setBirth(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCPF(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setCPF(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCEP(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setCEP(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStreet(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setStreet(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNumber(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setNumber(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setComplement(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setComplement(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDistrict(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setDistrict(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCity(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setCity(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setState(String value) {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.setState(value);
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void cleanControllers() {
    final _$actionInfo =
        _$_RegisterControllerBaseActionController.startAction();
    try {
      return super.cleanControllers();
    } finally {
      _$_RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'usernameController: ${usernameController.toString()},emailController: ${emailController.toString()},phoneController: ${phoneController.toString()},birthController: ${birthController.toString()},cpfController: ${cpfController.toString()},cepController: ${cepController.toString()},streetController: ${streetController.toString()},numberController: ${numberController.toString()},complementController: ${complementController.toString()},districtController: ${districtController.toString()},cityController: ${cityController.toString()},stateController: ${stateController.toString()},username: ${username.toString()},email: ${email.toString()},phone: ${phone.toString()},birth: ${birth.toString()},cpf: ${cpf.toString()},cep: ${cep.toString()},street: ${street.toString()},number: ${number.toString()},complement: ${complement.toString()},district: ${district.toString()},city: ${city.toString()},state: ${state.toString()},isUsernameValid: ${isUsernameValid.toString()},isEmailValid: ${isEmailValid.toString()},isPhoneValid: ${isPhoneValid.toString()},isBirthValid: ${isBirthValid.toString()},isCPFValid: ${isCPFValid.toString()},isCEPValid: ${isCEPValid.toString()},isStreetValid: ${isStreetValid.toString()},isNumberValid: ${isNumberValid.toString()},isComplementValid: ${isComplementValid.toString()},isDistrictValid: ${isDistrictValid.toString()},isCityValid: ${isCityValid.toString()},isStateValid: ${isStateValid.toString()},isValidAll: ${isValidAll.toString()}';
    return '{$string}';
  }
}
