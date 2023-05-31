import 'package:flutter/material.dart';
import '../component/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TM star'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: BottomTabBar(),
      ),
    );
  }
}
