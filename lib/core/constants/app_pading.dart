import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppPadding {
  // Symmetric paddings
  static final screen = EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h);
  static final horizontal = EdgeInsets.symmetric(horizontal: 16.w);
  static final vertical = EdgeInsets.symmetric(vertical: 16.h);
  static final button = EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);

  // Only horizontal or vertical single value
  static final left = EdgeInsets.only(left: 16.w);
  static final right = EdgeInsets.only(right: 16.w);
  static final top = EdgeInsets.only(top: 16.h);
  static final bottom = EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h);

  // Common padding sizes
  static final small = EdgeInsets.all(8.r);
  static final medium = EdgeInsets.all(16.r);
  static final large = EdgeInsets.all(24.r);

  // Special paddings
  static final card = EdgeInsets.all(12.r);
  static final listItem = EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h);
}
