import 'package:doc_app/core/dependeny_injection/dependeny_injection.dart';
import 'package:doc_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp());
}
