import '../../domain/entities/user_model.dart';
import '../../domain/repositories/user_repository.dart';

class DataUsersRepository extends UserRepository {
  List<UserModel> users;
  // sigleton
  static DataUsersRepository _instance = DataUsersRepository._internal();
  DataUsersRepository._internal() {
    users = List<UserModel>();
    users.addAll([
      UserModel(
        userId: '01',
        username: 'Monica Trott',
        email: 'monica.trott@email.com',
        phone: '+55 (85) 9.8822-2555',
        birth: '09/11/1998',
        cpf: '648.367.147-45',
        cep: '22640-102',
        street: 'Av. das Américas',
        number: 3900,
        complement: 'Loja 102',
        district: 'Barra da Tijuca',
        city: 'Rio de Janeiro',
        state: 'Rio de Janeiro',
      ),
      UserModel(
        userId: '02',
        username: 'John Doe',
        email: 'john.doe@email.com',
        phone: '+55 (85) 9.8865-4321',
        birth: '09/11/1998',
        cpf: '508.431.550-94',
        cep: '60810-060',
        street: 'Av. Washington Soares',
        number: 85,
        complement: 'Loja 85',
        district: 'Edson Queiroz',
        city: 'Fortaleza',
        state: 'Ceará',
      ),
    ]);
  }
  factory DataUsersRepository() => _instance;

  @override
  List<UserModel> getAllUsers() {
    // Here, do some heavy work lke http requests, async tasks, etc to get data
    return users;
  }

  @override
  UserModel getUser(String userId) {
    // Here, do some heavy work lke http requests, async tasks, etc to get data
    return users.firstWhere((user) => user.userId == userId);
  }

  @override
  addUser(UserModel user) {
    users.add(user);
  }
}
