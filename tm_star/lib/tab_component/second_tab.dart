import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTab();
}

class _SecondTab extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '두번째 탭',
      ),
    );
  }
}
