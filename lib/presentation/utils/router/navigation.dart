import 'package:fantasy_auf/presentation/utils/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> goToLogin(BuildContext context) async {
  context.go(routes.login);
}

Future<void> goToHome(BuildContext context) async {
  context.go(routes.home);
}

Future<void> goToRegister(BuildContext context) async {
  context.go(routes.register);
}
