import 'dart:developer';

import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  var name = ['감자', '고구마', '옥수수', '호박', '토마토'];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(8.0),
        itemCount: name.length,
        // 각 항목을 빌두하는 함수
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.account_box),
            title: Text(name[i++]),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(
            color: Colors.blue,
    ),
    );
  }
}
