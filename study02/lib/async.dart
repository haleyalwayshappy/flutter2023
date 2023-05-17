/// 비동기 프로그래밍 > 응답을 받지 않아도 대기하지않고 다음 코드를 진행한다.
/// 응답이 오면 오는 즉시 바로 처리한다.

/**비동기 프로그래밍을 사용하는 경우 :
 *  데이터베이스에서 게시판 글을 가져오는작업 ,
 *  복잡한 미적분 계산
 *  이미지 인코딩 등 시간이 걸리는 작업을 비동기로 처리한다.
 */

/// Future
/// List나 Set처럼 generic으로 어떤 미래의 값을 받아올지 정할 수있다.

/// async 와  await
///
import 'dart:async';

/** 비동기 프로그래밍으로 코드를 작성하면 순서대로 실행되지 않기떄문에 가독성이 떨어진다
    async와 await 키워드를 사용하면 비동기 프로그래밍을 유지하면서 코드 가독성을 유지할 수있다.
    async 키워드는 함수 매개변수 정의와 바디 사이에 입력
    await는 대기하고 싶은 비동기 함수 앞에 입력한다.
 */

Future <void> addsNumbers(int number1, int number2) async { //
    print('$number1 + $number2 계산 시작!');

    // await 를 사용하면 비동기 작업의 완료를 기다리고 결과를 반환한다.
    await Future.delayed(Duration(seconds: 3), () {
        print('$number1 + $number2 = ${number1 + number2}');
    });


    print('$number1 + $number2 코드실행끝');


  }


  /// 결괏값 반환받기


Future<int> addNumbers(int number1, int number2) async {
  print('$number1 + $number2 계산 시작!');

  // await 를 사용하면 비동기 작업의 완료를 기다리고 결과를 반환한다.
  await Future.delayed(Duration(seconds: 3), () {
    print('$number1 + $number2 = ${number1 + number2}');
  });

  print('$number1 + $number2 코드실행끝');

  return number1 +number2;
}




// void main()

Future<void> main2() async {

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

    controller2.sink.add(1);
    controller2.sink.add(2);
    controller2.sink.add(3);
  });

  /// 함수로 Stream 반환하기
  print('-------함수로 Stream 반환하기--------');
  playStream();

}

/// 함수로 Stream 반환하기
/// StreamController 를 사용하지 않고 직접 stream을 반환하는 함수를 사용할 수도 있다.
/// async* 로 함수를 선언하고 yield 키워드로 값을 반환해주면 된다.

Stream<String> calculate(int number) async* {
  for (int i=0; i<5; i++){
    yield 'i=$i';
    await Future.delayed(Duration(seconds: 1));
  }
}

void playStream(){
  calculate(1).listen((event) {
    print(event);
  });
}