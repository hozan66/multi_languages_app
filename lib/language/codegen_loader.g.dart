// command to generate this file
// -S => Source directory
// -O => Output directory
// flutter pub run easy_localization:generate -S "assets/translations" -O "lib/language"

// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    "morning": "صباح الخير",
    "evening": "مساء الخير",
    "welcome": "مرحبا بكم في تطبيقنا!",
    "lang": "اللغات"
  };
  static const Map<String, dynamic> en = {
    "morning": "Good morning",
    "evening": "Good evening",
    "welcome": "Welcome to our application!",
    "lang": "languages"
  };
  static const Map<String, dynamic> fa = {
    "morning": "بەیانیت باش",
    "evening": "ئێوارە باش",
    "welcome": "بەخێربێن بۆ ئەپلیکەیشنەکەمان!",
    "lang": "زمانەکان"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en,
    "fa": fa
  };
}
