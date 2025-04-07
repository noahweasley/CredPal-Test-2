import 'package:credpal_test/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnotatedStatusBar extends StatelessWidget {
  final Widget child;
  final Color? color;
  final Brightness? brightness;

  const AnnotatedStatusBar({
    super.key,
    required this.child,
    this.color,
    this.brightness,
  });

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColor.periwinkleBlue,
        statusBarBrightness: Brightness.light, // For iOS
        statusBarIconBrightness: Brightness.dark, // For Android
        systemNavigationBarColor: AppColor.periwinkleBlue,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: child,
    );
  }
}
