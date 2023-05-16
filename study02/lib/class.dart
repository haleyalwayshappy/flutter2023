
// 클래스 키워드를 입력 후 클래스명을 지정해 클래스 선언
class IdolOrigin{
  String name = '블랙핑크';
  // 프라이빗 변수
  final String _fanName = '블링크';


  void sayName(){

    // 클래스 내부의 속성을 지칭하고 싶을때는 this 키워드를 사용한다. > this.name 은 idol 클래스의 nmame 변수를 지칭한다.
    print ('안녕하세요 ${this.name} 입니다.');

    // 스코프 안에 같은 속성 이름이 하나만 존재한다면 this를 생략할 수 있다.
    print('저희 팬 이름은  ${_fanName}입니다.');
  }

}


/// ----------------------------------------



class Idol{

  // 생성자에서 입력받는 변수들은 일반적으로 final 키워드 사용된다 >  런타임 상수
  final String name;
  final List<String> members;

  /// const 를 선언할 경우에는 main쪽에서도 const를 선언해줘야한다.
  ///


  /// 두 코드 모두 생성자의 인자를 클래스의 멤버 변수에 할당하는 역할을 수행하지만, 문법적인 차이가 있다.
  /// 첫 번째 방식은 인자와 멤버 변수의 이름이 다를 때 유용하며,
  /// 두 번째 방식은 인자와 멤버 변수의 이름이 같을 때 편리합니다.


  // 생성자 (constructor)
  /// Idol();


  //포지셔널 파라미터
  // Idol(String name , List<String> members): this.name = name, this.members = members;
  Idol(this.name,this.members);


  // 매서드 : 클래스에 종속되는 함수를 지정할 수 있다.
  void sayHello(){

    // 클래스 내부의 속성을 지칭하고 싶을때는 this 키워드를 사용한다. > this.name 은 idol 클래스의 nmame 변수를 지칭한다.
    print ('안녕하세요 ${this.name} 입니다.');

    // 스코프 안에 같은 속성 이름이 하나만 존재한다면 this를 생략할 수 있다.
    print('저희는 $name입니다.');
  }

  void introduce(){

    print('저희 멤버는 ${this.members}가 있습니다.');
  }

} //class Idol{


/// ---------------------------------------------
/// private 사용법 변수명 앞에 (_)적어준다.
/// ---------------------------------------------
///



class IdolClass{
  String name ;
  List<String> members ;

  //네임드 파라미터
  IdolClass({required String name, required List<String> members}):this.name = name , this.members =members;
  IdolClass.fromList(List values)
      :this.members = values[0], this.name = values[1];


  void sayHello(){
    print ('안녕하세요 ${this.name} 입니다.');
    print('저희는 $name입니다.');
  }

  void introduce(){

    print('저희 멤버는 ${this.members}가 있습니다.');
  }



  // 데이터 가공 할때 사용
  // getter
  String get firstMember{
    return this.members[0];
  }

  //setter
  set firstMember(String name){
    this.members[0] = name;
  }
}



