import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_project/core/routing/router_manger.dart';
import 'package:medical_project/core/routing/router_name.dart';

class MedicalApp extends StatelessWidget {
  const MedicalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        
        debugShowCheckedModeBanner: false,
        onGenerateRoute: ongenerateroute,
        initialRoute: RouterName.onBoardingView,
      ),
    );
  }
}
