import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../language/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.lang.tr()),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(fontSize: 28, color: Colors.blue),
          textAlign: TextAlign.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.morning.tr()),
              const SizedBox(height: 30.0),
              Text(LocaleKeys.welcome.tr()),
              const SizedBox(height: 30.0),
              Text(LocaleKeys.evening.tr()),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () async {
                        await context.setLocale(const Locale('en'));
                      },
                      child: const Text('English')),
                  ElevatedButton(
                      onPressed: () async {
                        await context.setLocale(const Locale('ar'));
                      },
                      child: const Text('العربية')),
                  ElevatedButton(
                      onPressed: () async {
                        await context.setLocale(const Locale('fa'));
                      },
                      child: const Text('کوردی')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
