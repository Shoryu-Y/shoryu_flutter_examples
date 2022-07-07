import 'package:amplify_app/common/enum/todo_status.dart';
import 'package:amplify_app/models/ModelProvider.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_client.freezed.dart';

part 'todo_client.g.dart';

@freezed
abstract class TodoClient with _$TodoClient {
  const factory TodoClient({
    String? id,
    required String title,
    @Default('') String description,
    required TodoStatus status,
    DateTime? deadline,
    required DateTime createdAt,
  }) = _TodoClient;

  factory TodoClient.fromJson(Map<String, dynamic> json) =>
      _$TodoClientFromJson(json);

  factory TodoClient.fromDatastore(Todo todo) => TodoClient(
        id: todo.id,
        title: todo.title,
        description: todo.description ?? '',
        status: TodoStatus.fromString(todo.status),
        deadline: todo.deadline != null
            ? DateTime.fromMillisecondsSinceEpoch(todo.deadline!)
            : null,
        createdAt: DateTime.fromMillisecondsSinceEpoch(todo.createdAt),
      );
}
