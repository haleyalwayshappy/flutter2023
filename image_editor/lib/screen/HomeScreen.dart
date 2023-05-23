import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor/component/main_app_bar.dart';
import 'package:image_picker/image_picker.dart';

import '../component/footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  XFile? image; // 선택한 이미지를 저장할 변수

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //body 위치
        fit: StackFit.expand,
        children: [
          renderBody(),
          Positioned(
            top:0,
            left: 0,
            right: 0,
            child: MainAppBar( //앱바 위치
              onPickImage: onPickImage,
              onSaveImage: onSaveImage,
              onDeleteItem : onDeleteItem,
            ),
          ),
          // image선택시 Footer 화면
          if(image != null)
            Positioned(
              bottom:0,
              //left right 를 모두 0으로 주면 좌우 최대 크기를 차지한다.
              left: 0,
              right: 0,
              child: Footer(
                onEmoticonTap: onEmoticonTap,
              ),
            ),
        ],
      ),
    );
  }
// build() 함수 아래에 작성
  Widget renderBody() {
    if(image != null){ // 이미지가 있다면
      // Stack 크기의 최대 크기만큼 차지하기
      return Positioned.fill(
        // 위젯 확대 및 좌우 이동을 가능하게 하는 위젯
        child: InteractiveViewer(
          child: Image.file(
            File(image!.path),

            // 이미지가 부모 위젯 크기 최대를 차지하도록 설정
            fit:BoxFit.cover,
          ),
        ),
      );
    }else{
      // 이미지가 없을때 보여줄 화면
      return Center(
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.grey,
          ),
          onPressed: onPickImage,
          child: Text('이미지 선택하기'),
        ),
      );
    }
  }

  void onEmoticonTap(int index){}

  void onPickImage() async{
    print('온 픽 이미지! ');
    final image = await ImagePicker().
    pickImage(source: ImageSource.gallery); // 갤러리에서 이미지 선택하기

    setState(() {
      this.image= image;
    });
  }

  void onSaveImage(){
    print('온 세이브 이미지! ');
  }
  void onDeleteItem(){
  print('온 델리트 아이템! ');
  }



}





