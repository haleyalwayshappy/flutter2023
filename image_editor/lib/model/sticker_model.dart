
// 여러개의 스티커를 한번에 관리하기 편하게 분류해둠
class StickerModel {
  final String id;
  final String imgPath;

  StickerModel({
    required this.id,
    required this.imgPath,
  });

  @override
  bool operator ==(Object other) {  // ==로 같은지 비교할 때 사용되는 로직
    return (other as StickerModel).id == id; // ID값이 같은 인스턴스끼리는 같은 스티커로 인식
  }

  //  Set에서 중복 여부를 결정하는 속성
  // ID값이 같으면 Set 안에서 같은 인스턴스로 인식
  @override
  int get hashCode => id.hashCode;
}
