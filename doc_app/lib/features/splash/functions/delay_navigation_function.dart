import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:flutter/material.dart';

void delayNavigation(BuildContext context) async {
  await Future.delayed((Duration(seconds: 3)));
  if (!context.mounted) return;
  context.pushReplacementNamed(routeName: RouterStrings.login);
}
