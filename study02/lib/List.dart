listFunction(){
  // 리스트 추가 설명
  // 생성
  List<String> family = ['엄마','아빠','아들','딸'];
  print('가족 리스트  :  $family');

  // 추가
  // 기본 추가 방법
  family.add('할머니');
  print('할머니 추가 :  $family');

  // addAll 메소드
  List<String> momFamily = ['외삼촌','외할머니','외할아버지','외숙모','사촌언니','사촌동생'];
  family.addAll(momFamily);
  print('외갓집 추가 :  $family');


  // 수정
  family[5] ='할아버지';
  print('외삼촌 -> 할아버지 :  $family');

  // 삭제
  family.remove('사촌동생');
  print('사촌동생 삭제 :  $family');


  family.removeAt(0);
  print('[0]번값 삭제 :  $family');



  /** ------------------------------------------------------------------ */

// 프린트 함수 내에서 특수 문자 사용 \)
print ('\\\$  \\\' :  \$ \'  + 그 외의 특수 문자들은 그대로 사용 가능 . , " - _ !@#%^&**()');
}


//콜