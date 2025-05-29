import 'package:flutter/material.dart';
import 'package:medical_project/core/routing/router_name.dart';
import 'package:medical_project/features/on_boarding/views/on_boarding_view.dart';

MaterialPageRoute ongenerateroute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(
        builder: (_) => Center(child: Text('No Route Found')),
      );
  }
}
