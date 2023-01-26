import 'package:flutter_practice_architecture/src/provider/rest_provider.dart';
import '../model/Post.dart';

abstract class Repository {
  Future<List<Post>> getPostList();
}

class RepositoryImp extends Repository {
  final RestProvider _provider;

  RepositoryImp(this._provider);
  @override
  Future<List<Post>> getPostList() => _provider.getPostList();
}
