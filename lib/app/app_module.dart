import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';
import 'app_widget.dart';
import 'modules/profile/profile_controller.dart';
import 'modules/profile/profile_module.dart';
import 'modules/register/register_module.dart';
import 'modules/user/user_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: UserModule()),
        Router('/profile', module: ProfileModule()),
        Router('/register', module: RegisterModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
