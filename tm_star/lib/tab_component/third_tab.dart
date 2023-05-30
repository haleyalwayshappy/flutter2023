import 'package:flutter/cupertino.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  State<ThirdTab> createState() => _ThirdTab();
}

class _ThirdTab extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('세번째 뷰 '),
    );
  }
}
