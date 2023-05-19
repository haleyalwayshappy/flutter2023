import 'dart:io';

import 'package:flutter/material.dart';

class designApp extends StatelessWidget{
  const designApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'',
      home :Scaffold(

        appBar: AppBar( //앱바
          backgroundColor:Colors.amber,
          title : Text('Hello World - hong'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (){
                print('홈버튼 터치');
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),

        body:SafeArea( // 화면이 보이는 안전한 영역 자동 설정 t/b/l/r 위치에 true/false으로 적용처리 가능
          top:true,
          bottom:true,
          left: true,
          right: true,


          child:Column( // Row: 가로 , Column:세로
            mainAxisAlignment:MainAxisAlignment.center, // 세로 축
            crossAxisAlignment: CrossAxisAlignment.end, //가로축

            children:[

              Container(
                // color:Colors.green,
                // container 위젯 > 위젯의 너비와 높이 지정, 배경이나 테두리 추가할때 사용
                decoration: BoxDecoration(
                  color:Colors.amber,
                  border: Border.all(
                    width:16.0,
                    color: Colors.lightBlueAccent,
                  ),
                  borderRadius:BorderRadius.circular(16.0,),
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                    16.0,
                  ),
                ),
                width: 160.0,
                height: 80.0,
              ),

              SizedBox( // 일정 크기의 공간을 공백으로 두고 싶을때 사용
                height: 80.0,
                width: 80.0,
                child: Container(
                    color:Colors.white,
                ),
              ),

              Container( //padding & margin
                color:Colors.grey,
                child:Container(
                  color:Colors.green,
                  margin: EdgeInsets.all(16.0),
                  child: Padding(
                    padding: EdgeInsets.all(
                      16.0,
                    ),
                    child:Container(
                      color:Colors.orange,
                      width: 80.0,
                      height:80.0,
                    ),
                  ),
                ),
              ),


            ],

            // width:double.infinity,
          ),

        ),
      ),
    );
  }
}



class ColumnWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'',
      home :Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //주축 정렬 지정
          crossAxisAlignment: CrossAxisAlignment.center, // 반대축 정렬지정

          children: [
          Column(
            children:[

                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.pink,
                ),
              ],
            ),

            Column(
              children:[

                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.pink,
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  color: Colors.red,
                ),
              ],
            ),
          ],

        ),
      ),
      ),
    );
  }
}



class FlexWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'',
      home :Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Flexible(
                flex:3,
                child: Container(
                  color:Colors.blue,
                ),
              ),
              Flexible(
                flex:2,
                child: Container(
                  color:Colors.pink,
                ),
              ),
              Flexible(
                // flex:3,
                child: Container(
                  color:Colors.yellow,
                ),
              ),

             // Flexible(
             //    flex:3,
             //    child: Container(
             //      color:Colors.blue,
             //    ),
             //  ),
             //  Flexible(
             //    // flex:1,
             //    child: Container(
             //      color:Colors.pink,
             //    ),
             //  ),
             //  Flexible(
             //    // flex:3,
             //    child: Container(
             //      color:Colors.yellow,
             //    ),
             //  ),

            ],

          ),
        ),
      ),
    );
  }
}



class ExpandedWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'',
      home :Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  color:Colors.yellow,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color:Colors.teal,
                ),
              ),
              Expanded(
                child: Container(
                  color:Colors.amber,
                ),
              ),
             Expanded(
                child: Container(
                  color:Colors.yellow,
                ),
              ),
             //  Expanded(
             //    child: Container(
             //      color:Colors.teal,
             //    ),
             //  ),
             //  Expanded(
             //
             //    child: Container(
             //      color:Colors.amber,
             //    ),
             //  ),

            ],

          ),
        ),
      ),
    );
  }
}



class StackWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title :'',
      home :Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: 300.0,
                height:300.0,
                color: Color(0x74BF20FF),
              ),
              Container(
                width: 200.0,
                height:200.0,
                color: Colors.yellow,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              Container(
                width: 50.0,
                height: 50.0,
                color: Colors.pink,
              ),
            ],

          ),
        ),
      ),
    );
  }
}