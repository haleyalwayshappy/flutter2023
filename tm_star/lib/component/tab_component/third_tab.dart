import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//TODO
// 1. 리스트뷰 동적 구현 후 여러가지 내용을 담는 방법
// 2. onTab 실행시 간단한 토스트 메세지 띄우기
// 3. 근데 이제 각 생성된

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  State<ThirdTab> createState() => _ThirdTab();
}

class _ThirdTab extends State<ThirdTab> {
  List<String> name = ['사과', '당근', '토마토','고구마'];
  List<String> subText = ['달콤', '새콤', '상큼'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: Icon(Icons.account_box),
          title: Text('연락처 목록 : '+name[i++]),
          onTap: () {
            print('touch list');
          },
        );
      },
    );
  }
}
