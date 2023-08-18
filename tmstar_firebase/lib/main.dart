import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tmstar_firebase/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tmstar_firebase/screen/login_screen.dart';
import 'package:tmstar_firebase/screen/main_home_screen.dart';

Future<void> main() async {
  //파이어 베이스 초기화
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final firestore = FirebaseFirestore.instance;

  //snapshots을 활용해 데이터 가져오기
  var data = firestore.collection("app_data").doc("fir_page_data").snapshots();

  data.listen((event) {
    print(event.data());
  });

/*
  CollectionReference<Map<String, dynamic>> _collectionReference =
  FirebaseFirestore.instance.collection('app_data');

  QuerySnapshot<Map<String,dynamic>> querySnapshot =
  await _collectionReference.orderBy('first_page_data').get();

  print('data $querySnapshot');
*/

  // 로그인 벨리데이션
  // try {
  //   final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: "hongniest@gmail.com",
  //       password: "asdf1234!!"
  //   );
  // } on FirebaseAuthException catch (e) {
  //   if (e.code == 'user-not-found') {
  //     print('No user found for that email.');
  //   } else if (e.code == 'wrong-password') {
  //     print('Wrong password provided for that user.');
  //   }
  // }

  runApp(
    MaterialApp(
      home: LoginScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('test '),
      ),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginScreen();
        } else {
          // Otherwise, show something whilst waiting for initialization to complete
          return Container(
            child: Text("로그인 실패 (벨리데이션 실패)"),
          );
        }
      },
    );
  }
}
