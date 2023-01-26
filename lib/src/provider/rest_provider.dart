import 'package:http/http.dart' as http;
import '../model/Post.dart';
import 'dart:convert';

class RestProvider {
  final http.Client _httpClient;

  RestProvider({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<List<Post>> getPostList() async {
    var uri = Uri.https('jsonplaceholder.typicode.com', '/post');
    final response = await _httpClient.get(uri);
    return List<Post>.from(
        json.decode(response.body).map((post) => Post.fromJson(post))).toList();
  }
}
