

// 함수
// 1. 기본함수
/**
 * 포지셔널 파라미터 - 순서가 고정되어있음
 * 네임드 파라미터 - 이름이 있는 매개변수
 *
 * [] > 값을 지정할떄
 * {} > 변수명을 지정할떄 ( 값이 들어가면 == null ,  required 안써도되고 , [] 쓸필요 없음_)
 * {required 타입 변수명 }
 */
// parameter/ argment - 매개변수

// 포지셔널 파라미터
position_addTwoNumbers(int x, int y, int z) {
  // positional parameter - 순서가 중요한 파라미터
  int sum = x + y + z;
  print('x = {$x}');
  print('y = {$y}');
  print('z = {$z}');

  if (sum % 2 == 0) {
    print('{$sum}은 짝수');
  } else {
    print('{$sum}은 홀수');
  }
}

// 기본값을 갖는 포지셔널 파라미터
int testTwoNumbers([int a =1,  int b = 2]){
  return a+b;
}


// 네임드 파라미터
//1.
int named_addTwoNumbers({
  required int a ,
  required int b}) {
  return a+b ;
}

//2. 기본값 지정
int named_addTwoNumbers2({
  required int a ,
  int b= 3}) {
  return a+b ;
}

// 포지셔널파라미터와 네임드 파라미터를 섞어서도 사용할 수 있음
// 섞어쓰는 경우에는 포지셔널 파라미터가 네임드 파라미터보다 반드시 먼저 위치해야한다.

int mixed_addTwoNumbers(int a, {required int b, int c= 4 ,}){
  return a+b+c ;
}


// 익명함수와 람다함수 : 함수의 이름이 없고, 일회성으로 사용된다.
// 익명함수
/**
 * (매개변수){
 *    함수 내용
 *  }
 *  */

// 람다함수 - 익명함수와 차이 : 함수로직을 수행하는 스테이트먼트가 하나여야함.
//(매개변수) => 하나의 스테이트먼트

//typedef와 함수


// try- catch
/**
 * try{
 *    실행 로직
 * }catch(Exception e) {
 *    에러가 생길때 실행할 로직
 * }
 */

