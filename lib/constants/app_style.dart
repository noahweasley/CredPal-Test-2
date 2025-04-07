import 'package:flutter/material.dart';

extension StyleExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);

  TextStyle get monospaced => copyWith(letterSpacing: 5);
}

class TextStyles {
  static const _avenir = 'Avenir';

  static TextStyle displayLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 96,
    fontWeight: FontWeight.bold,
  );

  static TextStyle displayMedium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  static TextStyle displaySmall = const TextStyle(
    fontFamily: _avenir,
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineMedium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineSmall = const TextStyle(
    fontFamily: _avenir,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static TextStyle headlineSmaller = const TextStyle(
    fontFamily: _avenir,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleMedium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleSmall = const TextStyle(
    fontFamily: _avenir,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bodyLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodyMedium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle bodySmall = const TextStyle(
    fontFamily: _avenir,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static TextStyle labelLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle labelMedium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle labelSmall = const TextStyle(
    fontFamily: _avenir,
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );

  static TextStyle extraLarge = const TextStyle(
    fontFamily: _avenir,
    fontSize: 72,
    fontWeight: FontWeight.bold,
  );

  static TextStyle large = const TextStyle(
    fontFamily: _avenir,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  static TextStyle medium = const TextStyle(
    fontFamily: _avenir,
    fontSize: 28,
    fontWeight: FontWeight.normal,
  );

  static TextStyle small = const TextStyle(
    fontFamily: _avenir,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static TextStyle tiny = const TextStyle(
    fontFamily: _avenir,
    fontSize: 8,
    fontWeight: FontWeight.normal,
  );

  static TextStyle hidden = const TextStyle(
    fontFamily: _avenir,
    height: 0,
  );
}
