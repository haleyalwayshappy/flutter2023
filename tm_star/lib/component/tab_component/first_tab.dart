import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.message),
          title:Text('Message1',
          textAlign: TextAlign.center,
          ),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title:Text('Message2'),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title:Text('Message3'),
        ),
        ListTile(
          leading: Icon(Icons.message),
          title:Text('Message4'),
        ),
      ],
    );
  }
}
