import 'package:flutter/material.dart';
import 'package:image_editor/component/main_app_bar.dart';
import 'package:image_editor/model/sticker_model.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:image_editor/component/footer.dart';
import 'package:image_editor/component/emoticon_sticker.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'dart:typed_data';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  XFile? image; // 선택한 이미지를 저장할 변수
  Set<StickerModel> stickers = {};  // 화면에 추가된 스티커를 저장할 변수
  String? selectedId;  // 현재 선택된 스티커의 ID
  GlobalKey imgKey = GlobalKey();

  // 미리 생성해둔 onPickImage() 함수 변경하기
  void onPickImage() async{
    print('온 픽 이미지! ');
    final image = await ImagePicker()
        .pickImage(source: ImageSource.gallery); // 갤러리에서 이미지 선택하기

    setState(() {
      this.image= image; // 선택한 이미지에 변수 저장하기
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack( //body 위치
        fit: StackFit.expand,
        // 스크린에 Body > AppBar > Footer 순서로 쌓을 준비
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

          if(image != null)  // image선택시 Footer 화면
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
      return RepaintBoundary( // 위젯을 이미지로 저장하는데 사용
        key: imgKey,
        child: Positioned.fill(
          child: InteractiveViewer(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.file(
                  File(image!.path),
                  fit: BoxFit.cover,
                ),
                ...stickers.map(
                      (sticker) => Center(
                    child: EmoticonSticker(
                      key: ObjectKey(sticker.id),
                      onTransform: () {
                        onTransform(sticker.id);
                      },
                      imgPath: sticker.imgPath,
                      isSelected: selectedId == sticker.id,
                    ),
                  ),
                ),
              ],
            ),
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

  void onEmoticonTap(int index) async { // 스티커 화면에 붙이기
    setState(() {
      stickers = {
        ...stickers,
        StickerModel(
          id: Uuid().v4(), // 스티커의 고유 ID
          imgPath: 'asset/img/emoticon_$index.png',
        ),
      };
    });
  }


  void onSaveImage() async { // 이미지 저장하기.
    RenderRepaintBoundary boundary = imgKey.currentContext!
        .findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(); // 바운더리를 이미지로 변경
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png); // byte data 형태로 형태 변경
    Uint8List pngBytes = byteData!.buffer.asUint8List(); // Unit8List 형태로 형태 변경

    await ImageGallerySaver.saveImage(pngBytes, quality: 100);

    ScaffoldMessenger.of(context).showSnackBar(  // 저장 후 Snackbar 보여주기
      SnackBar(
        content: Text('저장되었습니다!'),
      ),
    );
  }

  void onDeleteItem() async {  // 스티커 삭제하기
    setState(() {
      stickers = stickers.where((sticker) => sticker.id != selectedId).toSet();  // 현재 선택돼 있는 스티커 삭제 후 Set로 변환
    });
  }

  void onTransform(String id){  // 스티커가 변형될 때마다 변형 중인 스티커를 현재 선택한 스티커로 지정
    setState(() {
      selectedId = id;
    });
  }
}


