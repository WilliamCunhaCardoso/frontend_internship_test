import 'package:flutter_modular/flutter_modular.dart';

import 'profile_page.dart';
import 'registration_page.dart';
import 'user_controller.dart';
import 'user_page.dart';

class UserModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => UserPage()),
        Router('/profile', child: (_, args) => ProfilePage()),
        Router('/register', child: (_, args) => RegistrationPage()),
      ];

  static Inject get to => Inject<UserModule>.of();
}
