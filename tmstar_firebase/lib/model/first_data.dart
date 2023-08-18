import 'package:cloud_firestore/cloud_firestore.dart';

class FirstData {
  final String news;
  final String high_10_list;
  final String low_10_list;
  final String bitget_btc_price;
  final String upbit_btc_price;
  final String low_avg;
  final String high_avg;
  final String upbit_btc_1day_rate;
  final String bitget_btc_1day_rate;

  FirstData(
      {required this.news,
      required this.high_10_list,
      required this.low_10_list,
      required this.bitget_btc_price,
      required this.upbit_btc_price,
      required this.low_avg,
      required this.high_avg,
      required this.upbit_btc_1day_rate,
      required this.bitget_btc_1day_rate});

  factory FirstData.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
        Map<String, dynamic> data = snapshot.data()!;
        return FirstData(
          upbit_btc_price: data['upbit_btc_price'],
          news: data['news'],
          high_10_list: data['high_10_list'],
          low_10_list: data['low_10_list'],
          bitget_btc_price: data['bitget_btc_price'],
          low_avg: data['low_avg'],
          high_avg: data['high_avg'],
          upbit_btc_1day_rate: data['upbit_btc_1day_rate'],
          bitget_btc_1day_rate: data['bitget_btc_1day_rate'],

        );
  }
}
