import 'package:flutter/material.dart';

void main() {
  // runApp(const SplashScreenFirst());
  runApp(const SplashScreen());
}


class SplashScreenFirst extends StatelessWidget {
  const SplashScreenFirst({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color:Color(0xFFF99231),
            // color:Colors.lightBlueAccent
          ),
          child:Center(
            child:Image.asset(
                'assets/logo2.png',
            ),
          ),
        ),

      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color:Color(0xFFF99231),
            // color:Colors.lightBlueAccent
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset(
                      'assets/logo2.png',
                      width: 200, // 가로 넓이
                    ),
                    CircularProgressIndicator(
                      valueColor:AlwaysStoppedAnimation(
                        Colors.white,
                      ) ,
                    ), //프로그래스 인디케이터
                  ]
              ),
            ],
          ),
        ),

      ),
    );
  }
}


