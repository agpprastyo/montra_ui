import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  initial('/'),
  home('/home'),
  settings('/settings'),

  // auth section
  onboarding('/onboarding'),
  signIn('/signIn'),
  signUp('/signUp'),
  forgotPassword('/forgotPassword'),
  resetPassword('/resetPassword'),
  verification('/verification'),
  ;

  const AppRoute(this.path);

  final String path;
}

extension AppRouteNavigation on AppRoute {
  void go(BuildContext context) => context.go(path);

  void push(BuildContext context) => context.push(path);
}
