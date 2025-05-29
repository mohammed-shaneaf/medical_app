import 'package:flutter/material.dart';
import 'package:medical_project/core/routing/router_manger.dart';
import 'package:medical_project/core/routing/router_name.dart';

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ongenerateroute,
      initialRoute: RouterName.onBoardingView,
    );
  }
}
