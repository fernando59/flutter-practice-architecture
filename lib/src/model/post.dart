import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

//flutter pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class Post extends Equatable {
  late final int id;
  late final String title;
  late final String body;
  Post(this.id, this.title, this.body);

  @override
  List<Object?> get props => [id, title, body];
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
