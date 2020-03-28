import 'package:frontent_internship_test/app/modules/user/user_model.dart';
import 'package:mobx/mobx.dart';

part 'user_controller.g.dart';

class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  static List preList = <UserModel>[
    UserModel(
      username: 'Monica Trott',
      email: 'monica.trott@email.com',
      phone: '+55 (85) 9.8822-2555',
      cpf: '648.367.147-45',
      cep: '22640-102',
      street: 'Av. das Américas',
      number: 3900,
      complement: 'Loja 102',
      district: 'Barra da Tijuca',
      city: 'Rio de Janeiro',
      state: 'Rio de Janeiro',
    ),
  ];

  @observable
  List<UserModel> userList = preList;

  @observable
  var userProfile;

  @action
  showUserList() {}

  @action
  showUniqueUser() {}

  @action
  addUser() {}
}
