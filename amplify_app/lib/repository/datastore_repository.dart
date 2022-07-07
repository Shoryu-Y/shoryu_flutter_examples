import 'package:amplify_app/common/enum/todo_status.dart';
import 'package:amplify_app/common/extension/todo_ext.dart';
import 'package:amplify_app/models/Todo.dart';
import 'package:amplify_app/models_client/todo_client.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final datastoreRepositoryProvider = Provider((_) => DatastoreRepository());

class DatastoreRepository {
  DataStoreCategory get _datastore => Amplify.DataStore;

  Future<void> createTodo({
    required TodoClient todo,
  }) async {
    await _datastore.save(TodoExt.fromClient(todo));
  }

  Stream<QuerySnapshot<Todo>> watchTodo() async* {
    yield* _datastore.observeQuery(Todo.classType);
  }

  Future<List<TodoClient>> readTodo() async {
    final todoDatastoreList = await _datastore.query(Todo.classType);
    final todoClientList = todoDatastoreList.map((e) => e.toClient).toList();
    return todoClientList;
  }

  Future<List<TodoClient>> readArchivedTodo() async {
    final todoDatastoreList = await _datastore.query(
      Todo.classType,
      where: Todo.STATUS.eq(TodoStatus.archived.toString()),
    );
    final todoClientList = todoDatastoreList.map((e) => e.toClient).toList();
    return todoClientList;
  }

  Future<void> updateTodo(TodoClient newTodo) async {
    await _datastore.save(TodoExt.fromClient(newTodo));
  }
}
