import 'package:flutter_modular/flutter_modular.dart';

import 'profile_controller.dart';
import 'profile_page.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => ProfileController())];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => ProfilePage(user: args.data,))];

  static Inject get to => Inject<ProfileModule>.of();
}
