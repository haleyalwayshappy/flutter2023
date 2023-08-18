
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tmstar_firebase/model/first_data.dart';



class MainHomeScreen extends StatelessWidget {


  var data =  FirebaseFirestore.instance.collection("app_data").doc("fir_page_data").snapshots();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('TM Star main'),
      ),
      body:Center(
        child: Column(
          children: [
            Text('실시간 업데이트 시간'),
            ImageContainer(),
            TodayPositionContainer(),
            BtcPriceContainer(),
            HighCoinContainer(),
            LowCoinContainer(),
            NewsContainer(),
            Padding(padding: EdgeInsets.all(15.0)),
          ],
        ),
      ),
    );
  }
}


// imageslider
class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),

      child: Text('이미지'),
    );
  }
}

// ai 추천 오늘의 포지션
class TodayPositionContainer extends StatelessWidget {
  const TodayPositionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),

      child: Text('ai 추천 오늘의 포지션 '),
    );
  }
}

//비트코인 가격
class BtcPriceContainer extends StatelessWidget {

  const BtcPriceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),

      child: Text(
          'FirstData["bitget_btc_price"].toString()'

      ),
    );
  }
}


// 상승코인 10리스트
class HighCoinContainer extends StatelessWidget {
  const HighCoinContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),

      child: Text('상승코인10리스트 '),
    );
  }
}


// 하락코인 10리스트
class LowCoinContainer extends StatelessWidget {
  const LowCoinContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),

      child: Text('하락코인10리스트 '),
    );
  }
}


// 비트코인 최신뉴스
class NewsContainer extends StatelessWidget {
  const NewsContainer({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var firstData;
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Column(
          children: [Text('$firstData'),
          ],
      ),
    );
  }
}


Future<List> fetchUsers() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  QuerySnapshot<Map<String, dynamic>> snapshot =
  await firestore.collection('users').get();

  List firstData = snapshot.docs.map((doc) => FirstData.fromFirestore(doc)).toList();

  print('$firstData[\'bitget_btc_price\'].toString()');
  return firstData;
}