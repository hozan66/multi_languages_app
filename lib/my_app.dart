import 'package:flutter/material.dart';
import 'package:multi_languages_app/home/home_screen.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // To control the direction of the page according to the language
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter multi_languages_app',
      home: const HomeScreen(),
    );
  }
}
