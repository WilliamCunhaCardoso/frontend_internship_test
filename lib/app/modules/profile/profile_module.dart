import 'package:frontent_internship_test/app/modules/profile/profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<Router> get routers => [];

  static Inject get to => Inject<ProfileModule>.of();
}
