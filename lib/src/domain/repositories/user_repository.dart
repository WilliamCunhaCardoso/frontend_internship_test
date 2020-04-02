import '../entities/user_model.dart';

abstract class UserRepository {
  //* Get Single User
  Future<UserModel> getUser(String userId);
  //* Get List of Users
  Future<List<UserModel>> getAllUsers();
  //* Add a User
  Future<UserModel> addUser(UserModel user);
}