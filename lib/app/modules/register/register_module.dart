import 'package:frontent_internship_test/app/modules/register/register_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
      ];

  @override
  List<Router> get routers => [];

  static Inject get to => Inject<RegisterModule>.of();
}
