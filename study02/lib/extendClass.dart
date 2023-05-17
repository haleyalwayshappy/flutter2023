
import 'package:study02/class.dart';

class IdolNew {
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



/// 믹스인
/// 특정 클래스에 원하는 기능들만 골라넣을 수 있는 기능
///특정 클래스를 지정해서 속성들을 정의할 수 있으며 지정한 클래스를 상속하는 클래스에서도 사용 할 수있다.
///인터페이스처럼 한개의 클래스에 여러개의 믹스인 을 적용할 수 이싿.
mixin IdolSingMixin on IdolNew{
  void sing(){
    print('${this.name}이 노래를 부른다.');
  }
}


class BoyGroup extends IdolNew with IdolSingMixin  {
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


/// 추상
/// 속성만 정의하고 인스턴스화 할 수 없도록 하는 기능
/// FamilyInterface를 인터페이스로 사용하고 따로 인스턴스 할 일이 없다면 추상클래스(abstract)로 선언해서 해당 클래스의 인스턴스화를 방지하고 메소드 정의를 자식 클래스에 위임할 수있다.
/// 추상 클래스는 추상 메소드를 선언할 수 있으며, 함수의 반환 타입, 이름, 매개변수만 정의하고 함수 바디의 선언을 자식 클래스에서 필수로 정의하도록 강제한다.
abstract class FamilyInterface{
  final String name;

  FamilyInterface(this.name);

  void sayName(){}

  void sayTalk(); // 추상 메소드 선언
}



class TestGroup implements FamilyInterface {
  final String name;

  TestGroup(
      this.name,
      );


  @override
  void sayTalk() {
    print ('bowbow');
  }

  @override
  void sayName() {
    print ('나는 $TestGroup 입니다. ');

  }

}







/// 제네릭
/// 타입을 외부에서 받을때 사용  ex: class name<>{}  / List<String>name =
class Lecture<T>{
  final T id;
  final String name;

  Lecture(this.id, this.name);


  void printIdType(){
    print(id.runtimeType);
  }
}


class Cache<T>{ // T는 임의로 선언한것
  final T data ;

  Cache({
    required this.data,
  });
}

/// 스태틱 - class 에 귀속 된다. (instance에 귀속되지 않음)
///
class Employee {
  static String? building ;  // 사람이 일하는 건물

  final String name ; // 사람이름

  Employee(
      this.name,
      );
  void printNameAndBuilding(){
    print ('제 이름은 $name입니다. $building 건물에서 근무하고 있습니다.');
  }

  static void printBuilding(){
    print ('저는 $building 건물에서 근무하고 있습니다.');
  }


}

/// 캐스케이드 연산자
/// 인스턴스에서 해당 인스턴스의 속성이나 멤버 함수를 연속해서 사용하는 기능이다. 캐스케이드 연산자는 .. 기호를 사용한다.

class Friends{
  String name;
  int age ;

  Friends(
      this.name,
      this.age,
      );

  void sayName(){
    print('내 친구의 이름은 $name 입니다.');
  }
  void sayNameAndAge(){
    print('내 친구의 이름은 $name 입니다. 친구의 나이는 $age입니다.');
  }


}
