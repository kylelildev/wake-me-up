import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:wakemeup/widgets/bottom_tab.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  // statusBarBrightness: Brightness.dark,
  // statusBarIconBrightness: Brightness.dark,
  // systemStatusBarContrastEnforced: false,
  // ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color(0xff331F57), fontFamily: 'AtypText'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('vn'), // Vietnamese
        ],
        home: const BottomTabWidget());
  }
}
