import 'package:flutter/widgets.dart';

abstract class AppStyles {
  static TextStyle f32bold = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static TextStyle f16normal = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font13DarkBlueRegular = const TextStyle(
    fontSize: 13,
    color: Color(0xFF1E2A32),
    fontWeight: FontWeight.w400,
  );
}
