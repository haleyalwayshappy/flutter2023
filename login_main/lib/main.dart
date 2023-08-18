import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future <void> main() async{
  widgetFlutterBinding.ensureInitialized();
  awiait Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}