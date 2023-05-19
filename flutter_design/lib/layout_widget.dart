import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Column(
            children: [
              SafeArea(
                  child: // 여기에 내용 작성
                  /*텍스트 관련 위젯*/
                  Text( // 내용
                      'hello world',
                      style: TextStyle( // 스타일
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber
                      )
                  )

              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Text('텍스트버튼'),
              ),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                child: Text('아웃라인드버튼'),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.red,
                ),
                child: Text('엘레베이티드 버튼'),
              ),
              GestureDetector(
                onTap: () {
                  print('on tap');
                },
                onDoubleTap: () {
                  print('on Double tap');
                },
                onLongPress: () {
                  print('on Long tap');
                },

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                  ),
                  width: 100.0,
                  height: 100.0,
                ),

              ),

              Container(
                width: 373,
                margin: EdgeInsets.all(16.0),
                height: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff4ee3da),
                ),
              ),
            ],

          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // 버튼이 클릭되었을 때 수행할 작업을 여기에 작성합니다.
              print('FloatingActionButton Pressed');
            },
            child: Icon(Icons.add),
          ),
        )
    );
  }
}