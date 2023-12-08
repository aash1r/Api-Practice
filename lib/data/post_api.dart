import 'dart:convert';

import 'package:api_demo/models/post_mode.dart';
import 'package:http/http.dart' as http;

class PostApi {
  static Future<List<PostModel>> getPosts() async {
    const url = "https://jsonplaceholder.typicode.com/posts";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      final allPosts = data.map((post) => PostModel.fromjson(post)).toList();
      return allPosts;
    }
    return [];
  }
}
