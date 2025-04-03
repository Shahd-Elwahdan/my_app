import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive {
  static Widget init({required Widget child}) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Adjust based on your design
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return child; // Wraps the child widget inside ScreenUtilInit
      },
    );
  }
}
