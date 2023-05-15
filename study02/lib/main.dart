import 'package:study02/main2.dart';

void main(){
  basicMain(); // 기본 문법 함수
  // position_addTwoNumbers(1033,32101,2202);

  // print(testTwoNumbers(2));
  // print(named_addTwoNumbers(a:2,b:3));
  // print(mixed_addTwoNumbers(3,b:4 , c:8));
}


// 함수
// 1. 기본함수
/**
 * 포지셔널 파라미터 - 순서가 고정되어있음
 * 네임드 파라미터 - 이름이 있는 매개변수
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
int testTwoNumbers(int a ,[int b = 2]){
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
 *  }*/

// 람다함수 - 익명함수와 차이 : 함수로직을 수행하는 스테이트먼트가 하나여야함.
//(매개변수) => 하나의 스테이트먼트

//typedef와 함수


// try- catch
/**
 * try{
 *    실행 로직
 * }catch(e) {
 *    에러가 생길때 실행할 로직
 * }
 */