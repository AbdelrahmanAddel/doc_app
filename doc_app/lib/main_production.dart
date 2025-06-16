import 'package:doc_app/core/constant/shared_pref_key.dart';
import 'package:doc_app/core/constant/shared_prefrence.dart';
import 'package:doc_app/core/dependeny_injection/dependeny_injection.dart';
import 'package:doc_app/core/helper/extensions.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfUserLoggedIn();
  runApp(DocApp());
}

checkIfUserLoggedIn() async {
  String? userToken = await SharedPrefHelper.getSecureString(SharedPrefKey.userToken);

  if (userToken.isNullOrEmpty()) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
}
