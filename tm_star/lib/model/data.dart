class DataModel {
  final String title;

  final String context;


  DataModel({
    this.title = '',
    this.context = '',
  });


  factory DataModel.fromMap({required String title, required Map<String,dynamic> map}){
    return DataModel(
      title: title,
      context: map['context']??'',
    );
  }

  Map<String,dynamic> toMap(){
    Map<String,dynamic> data ={};
    data['context'] = context;
    return data;
  }
}
