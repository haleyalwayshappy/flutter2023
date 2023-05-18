import 'dart:async';

import 'package:study02/List.dart';
// import 'package:study02/main2.dart';

// import 'async.dart';
import 'class.dart';
import 'extendClass.dart';
import 'main3.dart';


/*
void main(){

   Idol idol = Idol();

}
*/

Future<void> main() async {

  print('----------------Stream 기본 사용법  ---------------------');
  /// Stream
  /// Future는 반환값을 한번만 받아내는 비동기 프로그래밍에서 사용된다.
  /// 지속적으로 값을 반환 받을 때는 Stream 을 사용한다.
  /// Stream은 한번 listen하면 Stream에 주입되는 모든 값들을 지속적으로 받아온다.

  final controller = StreamController(); // StreamController 선언
  final stream = controller.stream; // stream 가져오기

  //Stream에 listen()함수를 실행하면 값이 주입될 때 마다 콜백함수를 실행할 수 있다.
  final streamListener = stream.listen((event) {
    print(event);
  });

  //Stream에 값을 주입하기
  //sink > push 값 넣어주기
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);

  print('----------------브로드캐스트 Stream   ---------------------');
  /// 스트림은 단 한번만 listen()을 실행할 수있다.
  /// 하지만 때때로 하나의 스트림을 생성하고 여러번 listen()함수를 실행해야할떄가 있다.
  ///  브로드캐스트 스트림을 사용하면 Stream 을 여러번 사용할 수 있다.

  final controller2 = StreamController();
  // 여러번 리슨 할 수 있는 Broadcast Stream 객체 생성
  final stream2 = controller2.stream.asBroadcastStream();

  final streamListener1 = stream2.listen((event) {
    print('listening 1');
    print(event);
  });

  final streamListener2 = stream2.listen((event) {
    print('listening 2');
    print(event);
  });
    controller2.sink.add(1);
    controller2.sink.add(2);
    controller2.sink.add(3);


  /// 함수로 Stream 반환하기
  // print('-------함수로 Stream 반환하기--------');
  // playStream();


}

//
//
// Future<void> main() async {
//   // 비동기 프로그래밍
//   print('----------------비동기 프로그래밍 1---------------------');
//   Future<String> name; //<int> <bool> 도 사용 가능
//   Future<String> name; //<int> <bool> 도 사용 가능
//
//   addsNumbers(1,1);
//
//   /// async <> await 를 사용하지 않았을 때 결과
//
//   /* ----------------비동기 프로그래밍 ---------------------
//   1 + 1 계산 시작!
//   1 + 1 코드실행끝
//   1 + 1 = 2
//   * */
//
//
//
// /// async <> await 를 사용했을 때의 결과
//
// /*
//   1 + 1 계산 시작!
//   1 + 1 = 2
//   1 + 1 코드실행끝
// /*
//
//
//   addsNumbers(4, 2);
//
// /*
//     1 + 1 계산 시작!
//     4 + 2 계산 시작!
//     1 + 1 = 2
//     1 + 1 코드실행끝
//     4 + 2 = 6
//     4 + 2 코드실행끝
//    */
//
//
//   // 이렇게 하면 작성한 순서대로 코드가 실행됨
//  await addsNumbers(3,3);
//  await addsNumbers(2,9);
//
// /*
//     3 + 3 계산 시작!
//     3 + 3 = 6
//     3 + 3 코드실행끝
//     2 + 9 계산 시작!
//     2 + 9 = 11
//     2 + 9 코드실행끝
//  */
//
//   print('----------------결괏값 반환 ---------------------');
//
//   final result = await addNumbers(1, 1);
//   print('결괏값 $result');
//
//   final result2 = await addNumbers(1, 32);
//   print('결괏값 $result2');
//
// /*
//     1 + 1 계산 시작!
//     1 + 1 = 2
//     1 + 1 코드실행끝
//     결괏값 2
//     1 + 32 계산 시작!
//     1 + 32 = 33
//     1 + 32 코드실행끝
//     결괏값 33
// *//*
//
//
//   print('----------------Stream 기본 사용법  ---------------------');
//   /// Stream
//   /// Future는 반환값을 한번만 받아내는 비동기 프로그래밍에서 사용된다.
//   /// 지속적으로 값을 반환 받을 때는 Stream 을 사용한다.
//   /// Stream은 한번 listen하면 Stream에 주입되는 모든 값들을 지속적으로 받아온다.
//
//   final controller = StreamController(); // StreamController 선언
//   final stream = controller.stream; // stream 가져오기
//
//   //Stream에 listen()함수를 실행하면 값이 주입될 때 마다 콜백함수를 실행할 수 있다.
//   final streamListener = stream.listen((event) {
//     print(event);
//   });
//
//   //Stream에 값을 주입하기
//   controller.sink.add(1);
//   controller.sink.add(2);
//   controller.sink.add(3);
//   controller.sink.add(4);
//
//   print('----------------브로드캐스트 Stream   ---------------------');
//   /// 스트림은 단 한번만 listen()을 실행할 수있다.
//   /// 하지만 때때로 하나의 스트림을 생성하고 여러번 listen()함수를 실행해야할떄가 있다.
//   ///  브로드캐스트 스트림을 사용하면 Stream 을 여러번 사용할 수 있다.
//
//   final controller2 = StreamController();
//   // 여러번 리슨 할 수 있는 Broadcast Stream 객체 생성
//   final stream2 = controller2.stream.asBroadcastStream();
//
//   final streamListener1 = stream2.listen((event) {
//     print('listening 1');
//     print(event);
//   });
//
//     final streamListener2 = stream2.listen((event) {
//     print('listening 2');
//     print(event);
//
//     controller2.sink.add(1);
//     controller2.sink.add(2);
//     controller2.sink.add(3);
//   });
//
//   /// 함수로 Stream 반환하기
//   print('-------함수로 Stream 반환하기--------');
//   playStream();
//
// }
//
//
//
//
// //
// // void main(){
// //   // 객체지향
// //   print('상속 : idolNew-------------------------------------');
// //   IdolNew apink = IdolNew('에이핑크',5 );
// //
// //
// //   print(apink);
// //
// //   BoyGroup bts = BoyGroup('BTS', 7);
// //
// //   bts.sayName();
// //   bts.sayMembersCount();
// //   bts.sayMale();
// //   print('mixin 기능------');
// //   bts.sing();
// //
// //   print('오버라이드 : idolNew-------------------------------------');
// //
// //   GirlGroup blackPink = GirlGroup('블랙핑크', 4);
// //
// //
// //   blackPink.sayName();
// //   blackPink.sayMembersCount();
// //
// //
// //   print('인터페이스 :-------------------------------------');
// //
// //   TestGroup test = TestGroup('홍은');
// //   test.sayName();
// //   test.sayTalk();
// //
// //
// //
// //   print('제네릭 :-------------------------------------');
// //
// //   Lecture<String> lecture1 = Lecture('123', 'name');
// //   lecture1.printIdType();
// //
// //   Lecture<int> lecture2 = Lecture(123, 'name');
// //   lecture2.printIdType();
// //
// //
// //   print('스태틱 :-------------------------------------');
// //   Employee hongeun = Employee('홍은');
// //   Employee chanie = Employee('채니');
// //   Employee seul = Employee('슬이');
// //   Employee.building = '오투타워';
// //
// //
// //   hongeun.printNameAndBuilding();
// //   seul.printNameAndBuilding();
// //   chanie.printNameAndBuilding();
// //
// //   print('캐스케이드 연산자 :-------------------------------------');
// //   Friends friendHong = Friends('홍은', 29);
// //   Friends friendchan = Friends('채니', 28);
// //
// //   friendHong
// //     ..sayName()..sayNameAndAge();
// //
// //   friendchan
// //     ..sayName()
// //     ..sayNameAndAge();
// //
// //
// // }
//
//
// //
// //
// //
// // void main(){
// //
// //
// //
// //   /** ------------------------------------------------------------------ */
// //
// // ///  class
// //   // 클래스 키워드를 입력 후 클래스명을 지정해 클래스 선언
// //   IdolOrigin origin = IdolOrigin(); // new는 생략 가능
// //   origin.sayName();
// //
// //
// // //
// //   // 포지셔널 파라미터일때
// //   Idol blackPink = Idol(
// //     '블랙핑크',
// //     ['지수','제니','리사','로제']
// //   );
// //
// //   // 네임드 파라미터일때
// //   IdolClass day6 = IdolClass(
// //     name:'데이식스',
// //     members : ['원필','도운','영케이','성진'],
// //   );
// //
// //   // 네임드 파라미터일때
// //
// //   IdolClass bts = IdolClass.fromList([
// //     ['뷔','정국','RM','슈가','제이홉','지민'],
// //       'BTS',
// //   ]);
// //
// //   blackPink.sayHello();
// //   blackPink.introduce();
// //
// //   print('---------------------');
// //   day6.sayHello();
// //   day6.introduce();
// //   print('---------------------');
// //
// //   bts.sayHello();
// //   bts.introduce();
// //   print('---------------------');
// //
// //   //getter
// //   print(day6.firstMember);
// //   // setter
// //   day6.firstMember = '제이';
// //   print(day6.firstMember);
// //
// //
// //   /** ------------------------------------------------------------------ */
// //
// //   /// 리스트 추가 설명
// //   // listFunction();
// //
// //   // basicMain(); // 기본 문법 함수
// //   // position_addTwoNumbers(1033,32101,2202);
// //
// //   /// main3 class
// //   // print(testTwoNumbers(2));
// //   // print(named_addTwoNumbers( b:3 , a :2));
// //   // print(mixed_addTwoNumbers(3,b:4 , c:8));
// // }
// //
// //
// // /// ------------------------------------------------------------------
// //
