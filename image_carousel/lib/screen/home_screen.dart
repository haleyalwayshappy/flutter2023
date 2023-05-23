import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 상태바 색상 변경
    return Scaffold(
      body:PageView(
          children: [1,2,3,4,5]
              .map(
                (number) => Image.asset('asset/img/image_$number.jpeg',
                fit: BoxFit.cover,
                ),
              )
              .toList(),
      ),
    );
  }

}


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen>{
  final PageController pageController = PageController();

  @override
  void initState(){
    super.initState(); // 부모 initState()실행

    Timer.periodic(
      Duration(seconds: 3),
        (timer){
          // print('실행!');
          int? nextPage = pageController.page?.toInt();

          if(nextPage == null){
            return;
          }
          if(nextPage == 4){
            nextPage =0;
          }else{
            nextPage++;
          }
          pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease, // 애니메이션 작동방식
          );
        },
    );
  }
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
      return Scaffold(
        body:PageView(
          controller: pageController,
            children: [1,2,3,4,5]
                .map(
                  (number) => Image.asset('asset/img/image_$number.jpeg',
                  fit: BoxFit.cover,
                  ),
                )
                .toList(),
        ),
      );

  }

}