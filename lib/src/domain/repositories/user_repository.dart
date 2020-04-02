import '../entities/user_model.dart';

abstract class UserRepository {
  //* Get Single User
  Future<UserModel> getUser( String uid);
  //* Get List of Users
  Future<List<UserModel>> getAllUsers();
}