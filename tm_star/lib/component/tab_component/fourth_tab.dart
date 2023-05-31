import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:tm_star/model/data.dart';

class FourthTab extends StatefulWidget {
  const FourthTab({Key? key}) : super(key: key);

  @override
  State<FourthTab> createState() => _FourthTab();
}

class _FourthTab extends State<FourthTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<DataModel>>(
        stream: streamMessages(), // 중계하고 싶은 Stream을 넣는다.
        builder: (title, context){
          if (!context.hasData) { //데이터가 없을 경우 로딩위젯을 표시한다.
            return const Center(child: CircularProgressIndicator());
          } else if (context.hasError) {
            return const Center(
              child: Text('오류가 발생했습니다.'),
            );
          } else {
            List<DataModel> data = context.data!;//비동기 데이터가 존재할 경우 리스트뷰 표시
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(data[index].context),
                          );
                        })),
              ],
            );
          }
        },
      ),
    );
  }

  Stream<List<DataModel>> streamMessages() {

    try{
      final firestore = FirebaseFirestore.instance; // 파이어 스토어 인스턴스 선언해주기
       var messages=  firestore.collection('todo_list').doc('test_todolist').get();
      // return

    }catch(ex){//오류 발생 처리
      log('error)',error: ex.toString(),stackTrace: StackTrace.current);
      return Stream.error(ex.toString());
    }
  }
}

//첫번째 파이어베이스 실패한 코드
// class SecondTab extends StatelessWidget {
//   const SecondTab({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListView(
//         children: <Widget>[
//           ListTile(
//             leading: Icon(Icons.message),
//
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SecondTabController extends GetxController {
//   final firestore = FirebaseFirestore.instance; // 파이어 스토어 인스턴스 선언해주기
//
//   //데이터 받아오기
//   getData() async {
//     var result =
//         await firestore.collection('todo_list').doc('test_todolist').get();
//     print(result);
//   }
// }
