// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget { // stateless위젯 생성
//   const HomeScreen({Key? key}): super(key:key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.pink[100], //핑크색 배경 적용
//       body: SafeArea( // 아이폰 노치 위젯을 위해 safeArea 선언
//         top: true,
//         bottom: false,
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween, //메인축 위아래 끝에 배치
//           crossAxisAlignment: CrossAxisAlignment.stretch, // 반대축 최대 크기로 ㄴ르리기
//           children: [
//             _DDay(),
//             _CoupleImage(),
//           ],
//         ),
//       ),
//
//
//     );
//   }
// }
//
// // 홈스크린의 위쪽 반을 구현할 _Day 위젯 생성
// class _DDay extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     final textTheme = Theme.of(context).textTheme;
//     return Column(
//       children: [
//         const SizedBox(height: 16.0,), // 여백
//         Text('U & I',   // 최상단 글자
//         style: textTheme.headline1, // Headline1 스타일 적용
//         ),
//         const SizedBox(height: 16.0,),
//         Text('우리 처음 만난 날',   // 두번재  글자
//           style: textTheme.bodyText1,
//         ),
//         Text('2022.05.22',  // 임의로 지정한 날짜
//           style: textTheme.bodyText2,
//         ),
//         const SizedBox(height: 16.0,),
//         IconButton(
//             iconSize: 60.0,
//             onPressed: (){},
//             icon: Icon(
//               Icons.favorite,
//               color: Colors.red,
//             ),
//         ),
//         const SizedBox(height: 16.0,),
//         Text('D+365',
//           style: textTheme.headline2,
//         )
//       ],
//     );
//   }
// }
//
// //홈스크린의 아래쪽을 구현할 _CoupleImage 위젯 생성
// class _CoupleImage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(child:Center( //이미지 중앙정렬
//       child: Image.asset(
//         'asset/img//middle_image.png',
//         height : MediaQuery.of(context).size.height/2, // 화면의 반만큼만 높이 구현 (하지만 expanded를 사용하면 expanded가 우선순위르 갖게되어 무시한다.)
//         ),
//       )
//     );
//   }
// }