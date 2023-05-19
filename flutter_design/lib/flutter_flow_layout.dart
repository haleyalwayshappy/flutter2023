import 'package:flutter/material.dart';

class FlutterflowWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title :'',
        home :Scaffold(
          body: SizedBox(
            child: Column(
            children: [
              Container(
                width: 393,
                height: 128,
                color: Color(0xffd9d9d9),
                child: Text(
                  '=test Figma to Flutter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),

              SizedBox(
                width: 393,
                height: 50,
                child: Text(
                  "test Figma to Flutter ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                width: 373,
                height: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff4ee3da),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}