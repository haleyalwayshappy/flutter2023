import 'package:study02/List.dart';
import 'package:study02/main2.dart';

import 'class.dart';
import 'extendClass.dart';
import 'main3.dart';

void main(){
  print('상속 : idolNew-------------------------------------');
  IdolNew apink = IdolNew('에이핑크',5 );

  print(apink);

  BoyGroup bts = BoyGroup('BTS', 7);

  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();
  print('mixin 기능------');
  bts.sing();

  print('오버라이드 : idolNew-------------------------------------');

  GirlGroup blackPink = GirlGroup('블랙핑크', 4);


  blackPink.sayName();
  blackPink.sayMembersCount();


  print('인터페이스 :-------------------------------------');

  TestGroup testGirl = TestGroup('하이', 3);

  testGirl.sayName();
  testGirl.sayMembersCount();



}

//
// void main(){
//
//
//
//
//
//
//
//
//   /** ------------------------------------------------------------------ */
//
// ///  class
//   // 클래스 키워드를 입력 후 클래스명을 지정해 클래스 선언
//   IdolOrigin origin = IdolOrigin(); // new는 생략 가능
//   origin.sayName();
//
//
//   // 포지셔널 파라미터일때
//   Idol blackPink = Idol(
//     '블랙핑크',
//     ['지수','제니','리사','로제']
//   );
//
//   // 네임드 파라미터일때
//   IdolClass day6 = IdolClass(
//     name:'데이식스',
//     members : ['원필','도운','영케이','성진'],
//   );
//
//   // 네임드 파라미터일때
//
//   IdolClass bts = IdolClass.fromList([
//     ['뷔','정국','RM','슈가','제이홉','지민'],
//       'BTS',
//   ]);
//
//   blackPink.sayHello();
//   blackPink.introduce();
//
//   print('---------------------');
//   day6.sayHello();
//   day6.introduce();
//   print('---------------------');
//
//   bts.sayHello();
//   bts.introduce();
//   print('---------------------');
//
//   //getter
//   print(day6.firstMember);
//   // setter
//   day6.firstMember = '제이';
//   print(day6.members);
//
//   /** ------------------------------------------------------------------ */
//
//   /// 리스트 추가 설명
//   // listFunction();
//
//   // basicMain(); // 기본 문법 함수
//   // position_addTwoNumbers(1033,32101,2202);
//
//   /// main3 class
//   // print(testTwoNumbers(2));
//   // print(named_addTwoNumbers( b:3 , a :2));
//   // print(mixed_addTwoNumbers(3,b:4 , c:8));
// }
//

/// ------------------------------------------------------------------

