import 'package:amplify_app/common/enum/todo_status.dart';
import 'package:amplify_app/models_client/todo_client.dart';
import 'package:amplify_app/repository/datastore_repository.dart';
import 'package:amplify_app/util/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoControllerProvider = Provider(
  (ref) => TodoController(read: ref.read),
);

final todoStreamProvider = StreamProvider(
  (ref) => ref.read(datastoreRepositoryProvider).watchTodo(),
);

class TodoController {
  const TodoController({required this.read});

  final Reader read;

  DatastoreRepository get _repository => read(datastoreRepositoryProvider);

  Future<void> addTodo({
    required String title,
    required String description,
    required TodoStatus status,
    required DateTime deadline,
  }) async {
    final todo = TodoClient(
      title: title,
      description: description,
      status: status,
      deadline: deadline,
      createdAt: DateTime.now(),
    );
    logger.info('todo: $todo');
    await _repository.createTodo(todo: todo);
  }

  Future<void> updateTodo() async {}
}
