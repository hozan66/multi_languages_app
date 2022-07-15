import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:multi_languages_app/language/codegen_loader.g.dart';
import 'package:multi_languages_app/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en'), Locale('ar'), Locale('fa')],
      fallbackLocale: const Locale('en'), // Default locale (language)
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}
