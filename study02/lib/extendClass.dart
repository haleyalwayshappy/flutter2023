
import 'package:study02/class.dart';

class IdolNew{
  // 상속 - inheritance // 상속을 받으면 부모클래스의 모든 속성을 자식클래스가 부여받는다
 // extends 키워드를 사용해서 상속받는다.
  //class 자식 클래스 extends 부모 클래스 순서

  String name ;
  int membersCount;

  IdolNew(this.name, this.membersCount);

  void sayName(){
    // print('저는 ${this.name}입니다.');

  }

  void sayMembersCount(){
    // print('${this.name}은 ${this.membersCount}명의 멤버가 있습니다.');
  }


}

class BoyGroup extends IdolNew with IdolSingMixin {
  // 상속받은 생성자
  BoyGroup(String name,
      int membersCount,) : super(name, membersCount,);

  // 상속받지 않은 기능
  void sayMale() {
    print('저는 남자아이돌입니다.');
  }
}


/// 오버라이드
class GirlGroup extends IdolNew{
  // 상속처럼 super 키워드 사용 가능
  // 생성자의 매개변수로 직접 슈퍼키워드를 사용해도 된다.
  GirlGroup(
      super.name,
      super.membersCount,
      );

  //override
  @override
    void sayName(){
    print('저는 여자아이돌 {$this.name} 입니다.');
    
    
    /// 실행시 sayName()은 자식클래스에 오버라이드 된 메소드 사용  
    /// sayMemberCount 는 오버라이드 하지 않았으므로 IDolNew 클레스의 메소드가 실행 
  
  }


}


/// 인터페이스
//  인터페이스와 상속의 큰 차이점은 없어보이나  상속은 부모클래스의 모든 기능이 상속되므로 재정의 할 필요가 없다. 
// 하지만 인터페이스는 모든기능을 다시 정의해주아한다.
// abstract 인스턴스로는 사용하지말고 설계만 해라라는뜻 << 추상
abstract class FamilyInterface{
  String name;

  FamilyInterface(this.name);

  void sayName(){}

  void sayTalk();
}



class TestGroup implements FamilyInterface {
  String name;

  TestGroup(
      this.name,
      );


  @override
  void sayTalk() {
    print ('bowbow');
  }

  @override
  void sayName() {
    // TODO: implement sayName
  }
}


class GirlGroup2 implements IdolNew {

}




/// 믹스인
/// 특정 클래스에 원하는 기능들만 골라넣을 수 있는 기능
///특정 클래스를 지정해서 속성들을 정의할 수 있으며 지정한 클래스를 상속하는 클래스에서도 사용 할 수있다.
///인터페이스처럼 한개의 클래스에 여러개의 믹스인 을 적용할 수 이싿.
mixin IdolSingMixin on IdolNew{
  void sing(){
    print('${this.name}이 노래를 부른다.');
  }
}




/// 추상
/// 속성만 정의하고 인스턴스화 할 수 없도록 하는 기능 인터페이스의 예제처럼
///
/// 제네릭
/// 스태틱
/// 캐스케이드 연산자

