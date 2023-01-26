import 'package:equatable/equatable.dart';

abstract class PostState extends Equatable {
  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {}
