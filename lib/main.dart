import 'package:flutter/material.dart';
import 'package:medical_project/core/di/depedency_injection.dart';
import 'package:medical_project/medical_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(MedicalApp());
}
