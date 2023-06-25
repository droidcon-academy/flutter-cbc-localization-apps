import 'package:flutter/material.dart';
import 'package:flutter_internationalization_localization/home.dart';
import 'package:flutter_internationalization_localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'internationalization.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multilingual App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Internationalization(title: 'Internationlization Example'),
      home: Home(title: "Multilingual App"),
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('hi'), // Hindi
      ],
    );
  }
}
