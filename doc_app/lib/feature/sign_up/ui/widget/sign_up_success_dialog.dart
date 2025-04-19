import 'package:doc_app/core/constant/app_strings.dart';
import 'package:doc_app/core/helper/naviagtor.dart';
import 'package:doc_app/core/router/router_strings.dart';
import 'package:flutter/material.dart';

void signUpSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(AppStrings.signUpSuccess),
        content: const SingleChildScrollView(
          child: ListBody(children: <Widget>[Text(AppStrings.congratulations)]),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              disabledForegroundColor: Colors.grey,
            ),
            onPressed: () {
              context.pushNamed(routeName: RouterStrings.login);
            },
            child: Text(AppStrings.continuee),
          ),
        ],
      );
    },
  );
}
