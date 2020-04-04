import 'package:flutter/material.dart';
import 'package:frontent_internship_test/src/app/pages/pages.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _buildRoute(settings, HomePage());
      case profile:
        var args = settings.arguments;
        return _buildRoute(settings, ProfilePage(user: args));
      case register:
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
