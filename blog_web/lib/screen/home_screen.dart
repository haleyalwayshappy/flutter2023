import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget{
  WebViewController? controller; // 컨트롤러 변수 생성
  HomeScreen ({Key? key}) : super(key:key) ; //const 삭제

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:Text('Code Factory'),
        centerTitle: true,
        
        actions: [
          IconButton(onPressed: (){ // 버튼 눌렀을때 콜백 함수 설정
            if(controller!=null){
              controller!.loadUrl('https://blog.codefactory.ai'); // 웹뷰에서 보여줄 사이트 실행
            }
          },
            // 홈버튼 아이콘 설정
            icon: Icon(
            Icons.home,
            ),
          ),
        ],
      ),
      
      body: WebView(
        onWebViewCreated: (WebViewController controller){
          this.controller =controller;
        },
        initialUrl:'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,

      ),

    );
  }

}
