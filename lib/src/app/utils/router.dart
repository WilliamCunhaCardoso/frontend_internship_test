import 'package:flutter/material.dart';
import 'package:frontent_internship_test/src/app/pages/pages.dart';

class Router {
  // final RouteObserver<PageRoute> routeObserver;

  // Router() : routeObserver = RouteObserver<PageRoute>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.home:
        return _buildRoute(settings, HomePage());
      case Pages.profile:
        var args;
        return _buildRoute(settings, ProfilePage(user: args));
      case Pages.register:
        return _buildRoute(settings, RegisterPage());
      default:
        return null;
    }
  }

  static MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
