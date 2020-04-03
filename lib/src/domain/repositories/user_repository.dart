import '../entities/user_model.dart';

abstract class UserRepository {
  //* Get Single User
  UserModel getUser(String userId);
  //* Get List of Users
  List<UserModel> getAllUsers();
  //* Add a User
  void addUser(UserModel user);
}