import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tm_star/component/tab_component/second_tab.dart';
import 'package:tm_star/screen/home_screen.dart';

import 'component/bottom_navigation.dart';
import 'firebase_options.dart';
//
// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // await Firebase.initializeApp(
//   //   options: DefaultFirebaseOptions.currentPlatform,
//   // );
//   runApp(const MyApp());}
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'flutter to firestore',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:const HomeScreen(),
//     );
//   }
// }

void main() {
 runApp(
      MaterialApp(
        home:HomeScreen(),
      ),
  );

}