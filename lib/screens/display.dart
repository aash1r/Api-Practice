import 'package:api_demo/data/post_api.dart';
import 'package:api_demo/models/post_mode.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  List<PostModel> allPosts = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<List<PostModel>> getData() async {
    allPosts = await PostApi.getPosts();
    return allPosts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: allPosts
              .map((posts) => Padding(
                    padding: const EdgeInsets.all(30),
                    child: Center(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: Column(
                              children: [
                                Text('Title: ${posts.title}'),
                                Text('Body: ${posts.id}'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
