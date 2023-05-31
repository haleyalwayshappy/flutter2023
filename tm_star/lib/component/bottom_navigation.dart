import 'package:flutter/material.dart';
import 'package:tm_star/component/tab_component/first_tab.dart';
import 'package:tm_star/component/tab_component/second_tab.dart';
import 'package:tm_star/component/tab_component/third_tab.dart';


// Bottom Navigation Bar
class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  // 선택된 탭 레이아웃의 리스트 인덱스값
  int _selectedIndex = 0;

  // 탭레이아웃에 매칭해줄 위젯리스트 만들어주기
  static const List<Widget> _widgetOptions = <Widget>[
    FirstTab(), //  첫번쨰 탭 레이아웃
    // SecondTab(),
    SecondTab(),
    ThirdTab(),
    // FourthTab(),
    Text(
      // 네번째 탭은 텍스트 화면으로 대체
      'Index 0: Home',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 1: Home',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  ];

  // 탭이 눌렸을 때 실행 될 함수
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //log to here for selected, idx
      print('_selectedIndex $_selectedIndex');
      print('index $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // 화면에 보여지는 부분 (위젯옵션)
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.teal,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.auto_graph_sharp,
              color: Colors.teal,
            ),
            label: '전략',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
              color: Colors.teal,
            ),
            label: '기록',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box_outlined,
              color: Colors.teal,
            ),
            label: '자산',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline,
              color: Colors.indigo,
            ),
            label: '정보',

          ),
        ],
        currentIndex: _selectedIndex, // 현재 활성화 된 바텀네비게이션 바에대한 아이템에 대한 인덱스값
        selectedItemColor: Colors.amber[800], // 아이템을 선택시 변경되는 색상
        onTap: _onItemTapped, // 제스처 (탭 레이아웃을 눌렀을 때 실행 되는함수)
      ),
    );
  }
}
