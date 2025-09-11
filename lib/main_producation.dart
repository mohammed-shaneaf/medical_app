import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/di/depedency_injection.dart';
import 'package:medical_project/medical_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // to fix layouts font bug in flutter_screenutil package
  await ScreenUtil.ensureScreenSize();
  runApp(MedicalApp());
}
