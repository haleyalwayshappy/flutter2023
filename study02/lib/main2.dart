import 'package:flutter/material.dart';

basicMain() {
   // ;
   // print('{$name}\' ');

  // 1. 메인함수
  // 다트언어는 프로그램 시작점인 엔트리 함수 기호로  main()을 사용한다.
  // 2. 주석은 // , /** */ , /// 세가지가 있다. ///는 문서 주석을 작성할 수 있다. IDE에서 문서로 인식함
  // 3. print()함수 -> 콘솔에 출력시 print()함수 사용
  /** print('hello world'); */

  // 4. var를 사용한 변수 선언
  /** var 변수명 = 값; 형식으로 작성 > 변수에 값이 들어가면 자동으로 타입을 추론하는 타입추론 기능을 가졌음.
   * 변수값을 변경하는것은 가능하나, 변수의 타입은 한번 타입추론이 된 후에 변경되지 않는다.
   *  var name ='이홍은'; //String
   *  name ='이상해씨'; // > 같은 String 타입이라서 변수값 변경 가능
   *  name =3; // int값이므로 오류 남.
   */

  //5. dynamic을 사용한 변수선언
  /** dynamic도 타입추론 기능을 가졌다. var랑 다른점은 타입추론이 이루어 진 후에도 변수의 타입이 고정되지 않아 유연하게 사용가능
   * dynamic age = 32; // int
   * age ='32살'; // int > String 타입이 변경됨
   * print('age'); > '32살' 출력됨
   * */

  //6. final/const 사용한 변수 선언
  /** final과 const 는 상수라서 처음 선언 한 후 변수값을 변경 할 수 없다.
   * final String idolGirlGroup = '블랙핑크';
   * idolGirlGroup = 'BTS'; // 오류
   *
   * const String idolBoyGroup = 'BTS';
   * idolBoyGroup = '걸스데이'; // 오류
   * final은 런타임 상수  > DateTime()함수 등 실행될 때 값이 확정되는 경우에 사용
   * const는 빌드타임 상수 > 코드를 실행하기 이전에 값이 확정일 때 사용
      // 정상
      final DateTime now = DateTime.now();
      print(now);

      // 오류
      const DateTime now2 = DateTime.now2();
      print(now2);
   */


  //7. 변수타입
  /// var 키워드를 사용해서 자동으로 변수를 선언하는 방법은 간단하지만 타입이 명확하지 않기떄문에 공동으로 개발을 진행하게 되면 헷갈릴 수 있다.
  /// 따라서 변수 타입을 직접적으로 사용하는것 권장
  /** String - 문자열 -> // string text = '코드팩토리';
      int - 정수 : int isInt = 30;
      double - 실수  : double isDouble =3.24;
      bool - 불리언 (true/false) : bool isTrue = false ;
   */


  // ###  컬렉션 (<-> ArrayList) ###
  /**  여러개의 값을 하나의 변수에 저장할 수 있는 타입이다.
      List : 여러개의 값을 순서대로 저장
      Map : 특정 키 값을 기반으로 값을 검색
      Set : 중복된 데이터를 제거할때
   */

  // 1. List 타입
  // add() , where() , map() , reduce(), fold()

  List<String> blackPinkList = ['리사','지수','제니','로제'];
  List<int> testNumber = [2,4,5,6,7,8];

  blackPinkList[3]= '코드'; // 3번 인덱스 값 변경
  // print(testNumber[1]); //원하는 원소값 출력

  //1-1.add() - 리스트 끝에 추가됨
  blackPinkList.add('지니');
  // print(blackPinkList); // [리사, 지수, 제니, 코드, 지니]


  //1-2.where()
  /** 리스트내에 있는 값들을 순회하며 특정조건에 맞는 값을 필터링한다. 매개변수에 함수를 입력해야하며, 입력된 함수는 기존 값을 하나씩 매개변수로 입력받는다.
   * 값 별로 true,false를 반환하며 true일때는 값을 유지, false일때는 값이 버려진다.
   * 순회가 끝나면  Iterable로 반환된다.
   */
  final newList = blackPinkList.where(
        (name) => name == '리사'||name == '지수',
  );

  // print('1-2 where >> {$newList}'); // (리사, 지수)
  // print('1-2 where >> {$newList.toList()}'); // Iterable을 List로 다시 변환할때 .toList()를 사용 > [리사, 지수]
  // print('1-2 where >> {$newList.toList().runtimeType}'); // List<String>


  //1-3.map() <List 내장함수
  /** 리스트에 있는 값들을 순서대로 순회하면서 값을 변경할 수있다.
   * 매개변수에 함수를 입력해야하며 입력된 함수는 기존값을 하나씩 입력 받고 반환하는 값이 현재값을 대체한다.
   * 변경이 끝나면 Iterable로 반환된다.
   */
  final newBlackPink = blackPinkList.map(
        (name) => '블랙핑크 $name', // 리스트의 모든 값 앞에 '블랙핑크' 추가
  );

  // print(newBlackPink); // (블랙핑크 리사, 블랙핑크 지수, 블랙핑크 제니, 블랙핑크 코드, 블랙핑크 지니)
  // print(newBlackPink.toList()); // Iterable을 List로 다시 변환할때 .toList()를 사용 // [블랙핑크 리사, 블랙핑크 지수, 블랙핑크 제니, 블랙핑크 코드, 블랙핑크 지니]


  //1-4.reduce()함수
  /**List에 있는 값을 순회하면서 ㅂ매개변수에 입력된 함수를 실행한다. reduce는 순회할때마다 값을 쌓아가는 특징이있다.
   * 위에 두 함수는  Iterable을 반환했지만 reduce() 함수는 List멤버의 타입과 같은 타입을 반환한다.
   */
  final allMembers = blackPinkList.reduce((value,element) => value +','+element); // 리스트를 순회하며 값을 더한다.

  // print(allMembers); //   리사,지수,제니,코드,지니 String
  // print(allMembers[0]); // 리

  //1-5.fold()함수
  /** 실행되는 논리는 reduce()함수와 동일하다. fold()함수는 어떤타입이든 반환이 가능하다. */
  final allMemNum = blackPinkList.fold<int>(0,(value, element) => value+element.length);
  // print(allMemNum); //10


  //2. Map 타입
  /** 키 : 값을 저장
   * 리스트와의 차이점 : 리스트 -  순서대로 값을 저장하는데 중점을 둠, 맵 - 키를 이용해서 원하는 값을 빠르게 찾는데 중점을 둠
   * Map<키의 타입,값의 타입> 맵이름
   */
   Map<int , String> test = {
     1: '이홍은',
     2: '사장님',
     3: '김도훈', // 마지막 , 은 생략해도 된다.
   };

  print(test.values);

  Map<String, String> dictionary = {
    'HarryPorter' : '해리 포터',
    'Ron Weasley' : '론 위즐리',
    'Herminoe Granger' : '해르미온느 그레인저',
  };
  // 키로 값 받기
  print(dictionary['HarryPorter']);

  // 키와 값 반환 받기
  print(dictionary.keys);
  print(dictionary.values);


  //3. Set 타입
  /** 중복이 없는 값드릐 집합
   * Set<타입> 세트이름
   */

  Set<String> day6 = {'도운','도운','영현','성진','원필','영현'};

  print(day6);

  // 값이 있는지 확인 (true,false)
  print(day6.contains('도운'));

  print(day6.toList()); // []

  // List 타입을 set 타입으로 변환
  List<String> day5 = ['도운','영현','영현','성진','원필','제이'] ;
  print(Set.from(day5));



  // 4. enum
  /**
   * enum 은 한 변수의 값을 몇가지 옵션으로 제한하는 기능이다. 선택지가 제한적일떄 사용
   *
   * 예시는 아래 switch 문에서 구현
   */


  //### 연산자 ###
  /** 수치연산자 , null 값 입력 관련 연산자, 값 비교 연산자, 타입비교 연산자, 논리연산자*/
  //1. 수치연산자
  /** 더하기 (+) 빼기 (-) 곱하기 (*) 나누기 (/) 나머지값 (%)  */

  //단항연산
  /** (++) (--) (+=) (-=) (*=) (/=)      */


  //2. null 관련 연산자
  double? number3 = 1;
  double? number4 ;  // 자동으로 null값 지정
  number4 ??= 3; // ??를 사용하면 기존값이 null일때만 저장됨
  number4 ??= 5; // 기존값이 null값이 아니기떄문에 3으로 유지된다.

  //3. 비교연산자
  /**(<)(>)(>=)(<=)(==)(!=) */

  //4. 타입비교 연산자
  /**(is) (!is)
   * print(number3 is int) > true/false로 반환  */

  //5.논리 연산자
  /** AND(&&) OR(||) */



  //### 제어문 ###
  /**if문 switch문 for문     */
  //1. if문
  /** if(조건문){
   *      내용
   * }else if(조건문) {
   *      내용
   * }else{
   *      내용
   * }
   *
   */

  int grade_final = 80;

  if(grade_final > 90){
    print('A 학점 ');

  }else if ( grade_final >=89 || grade_final >80 ){
    print('B 학점');
  }else{
    print('F 학점');
  }

  //2. switch 문
  /** 입력된 상수값에 따라 알맞은 case 블록을 수행한다.
   * break 키워드를 사용하면 switch 문 밖으로 나갈 수 있다.
   * enum 과 같이 사용하면 유용
   */
  Status status = Status.approved;
  switch(status){
    case Status.approved:
      print('승인 상태입니다.');
      break;
    case Status.pending:
      print('대기 상태입니다.');
      break;
    case Status.rejected:
      print('거절 상태입니다.');
      break;
    default:
      print('알 수 없는 상태입니다.');


  }

  print(Status.values); //[Status.approved, Status.pending, Status.rejected] > List
  print(Status.values.runtimeType); //List<Status>

  //3. for문
  // 기본적인 for 문
  for(int i =0; i<3; i++){
    print(i);
  };

  //for in 문 : List의 모든 값을 순회하고 싶을 떄 사용
  List<int>numberList = [3,6,8];
  for(int numbers in numberList){
    print(numbers); // 3,6,8을 각각 반환한다.
  };


  //5. while문 / do while문
  /**for문은 횟수를 기반으로  함수를 밙복적으로 실행,
   * while문은 조건을 기반으로 반복문을 실행 조건이 true면 실행하고, false면 멈춘다.
   */

  int total = 0;
  while(total<10){ //10보다 작으면 계속 실행
    total+=1;
  };
  print(total);

  //do... while 문
  int totall = 2;
  do{
    totall+=1;
  }while(total<13);

  print(totall);


}

//4. enum (class ?)
enum Status {
  approved,
  pending,
  rejected,
}

