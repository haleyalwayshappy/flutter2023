//typedef : 함수를 변수처럼 사용할 수 있게 도와주는 기능
import 'package:flutter/material.dart';

// 스티커를 선택할때마다 실행할 함수의 시그니ㅊ
typedef OnEmoticonTap = void Function(int id);
class Footer extends StatelessWidget{
  final OnEmoticonTap onEmoticonTap;

  const Footer({
    required this.onEmoticonTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white.withOpacity(.9),
      height: 150,
      child: SingleChildScrollView( // 가로로 스크롤 가능하게 스티커 구현
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(7, (index) => Padding(
            padding:const EdgeInsets.symmetric(horizontal:8.0),
              child:GestureDetector(
                onTap: (){
                  onEmoticonTap(index+1); // 스티커 선택시 실행할 함수
                },
                child: Image.asset(
                  'asset/img/emoticon_${index+1}.png',
                height: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}