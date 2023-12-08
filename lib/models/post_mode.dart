class PostModel {
  int? id;
  int? userId;
  String? title;
  String? body;

  PostModel({this.body, this.id, this.title, this.userId});

  factory PostModel.fromjson(Map<String, dynamic> json) {
    return PostModel(
        id: json["id"],
        userId: json['userId'],
        title: json["title"],
        body: json['body']);
  }
}
