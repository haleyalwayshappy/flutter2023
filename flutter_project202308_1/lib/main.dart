import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // 다언어설정

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: Intl.message('app_title'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('Kr'), // English
        Locale('en'), // Spanish
      ],



    );
  }
}
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) :super (key:key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: {'/localization': (context) => Container()},
//       initialRoute: '/localization',
//       localizationsDelegates: const [  // 다언어 설정
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//         GlobalCupertinoLocalizations.delegate,
//       ],
//       supportedLocales: const [ // 다언어 설정
//         Locale('ko', ''), //한국어
//         Locale('en', ''), //영어
//       ],
//     );
//   }
// }
