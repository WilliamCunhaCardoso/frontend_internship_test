import 'package:frontent_internship_test/app/modules/register/register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_page.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => RegisterPage())];

  static Inject get to => Inject<RegisterModule>.of();
}
