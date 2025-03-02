import 'package:doc_app/core/helper/naviagtor.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:flutter/material.dart';

void delayNavigation({required BuildContext context}) {
  Future.delayed(const Duration(seconds: 3), () {
    context.pushReplacementNamed(routeName: RouterStrings.signIn);
  });
}
