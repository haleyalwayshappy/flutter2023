# image_carousel

## 전자액자
이미지를 자동으로 순차적으로 보여주는 전자액자 만들기
> 좌우로 스와이프해서 이미지 변경 가능  
> 특정시간이 지나면 자동으로 롤링 
> 이미지 화면에 꽉차게하기
> 상태바 색상 변경 

### 사용기능 
image 
timer 
pageView
statefulWidget 
SystemChrome

### 사전지식
1. 위젯 생명주기 

상태가 변경되는 사용자 입력을 처리하거나 동적으로 데이터를 가져와 UI를 업데이트해야하는 경우에는 StatefulWidget을 사용해야한다.
반면에 UI가 정적이거나 변경 가능한 상태를 가지지 않는 경우에는 Stateless widget으로 구현할 수 있다.

Flutter에서는 두 유형의 위젯을 조합하여 앱을 구성할 수 있으며, 
StatefulWidget 안에 Stateless widget을 포함시키는 등 다양한 위젯 구성을 할 수 있다.

> 이번 프로젝트에서 이해해야하는 3가지 
    1. 상태변경이 없는 생명주기
        : 위젯이 화면에 나타나며 생성되고 화면에서 사라지며 삭제되는 과정을 의미한다.
        중간에 위젯 상태가 변경되지 않는다.

    2. StatefulWidget 생성자의 매개변수가 변경됐을때의 생명주기
       위젯이 생성 된 후 삭제가 되기 전 매개변수가 변경되면 해당 생명주기가 실행된다.
       
       statefulWidget 생성자 실행 >
       state의 didUpdateWidget()함수가 실행된다. > 
       State가 dirty상태로 변경된다. >
       build()가 실행된다. > 
       State의 상태가 clean으로 변경된다. 
       
    3. State자체적으로 build()를 재실행할때의 생명주기 
       StatefulWidget 은 StatefulWidget 클래스와 State클래스로 구성돼 있는데, 
       State클래스는 setState() 함수를 실행해서 build()함수를 자체적으로 재실행할 수 있다.
       
       setState()를 실행 > State가 dirty 상태로 변경된다.> 
        build()가 실행된다. > State의 상태가 clean으로 변경된ㄷ나. 
       
2. Timer 
   특정 시간인 지난 후에 일회성 또는 지속적으로 함수를 실행. 
   해당 프로젝트에서는 Timer.periodic() 을 사용해서 주기적으로 콜백함수 실행할 예정 
       Timer() - 기본생성자 . 첫번째 매개변수에 대기 기간을 Duration으로 입력하고 
                    두번째 매개변수에 기간이 끝난 후 실행할 콜백함수를 입력한다.
       Timer().periodic() 
         Timer의 유일한 네임드 생성자. 주기적으로 콜백함수를 실행할 때 사용된다. 
         매개변수의 입력순서는 기본 생성자와 같다. 