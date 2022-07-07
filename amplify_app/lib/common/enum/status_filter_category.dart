import 'package:amplify_app/common/enum/todo_status.dart';
import 'package:amplify_app/models/ModelProvider.dart';

enum StatusFilterCategory {
  all(status: null),
  waiting(status: TodoStatus.waiting),
  inProgress(status: TodoStatus.inProgress),
  done(status: TodoStatus.done),
  archived(status: TodoStatus.archived),
  ;

  const StatusFilterCategory({required this.status});

  final TodoStatus? status;

  List<Todo> getFilteredTodo(List<Todo> todo) {
    if (this == StatusFilterCategory.all) {
      return todo
          .where(
            (datastore) => datastore.status != TodoStatus.archived.toString(),
          )
          .toList();
    }
    final result = todo
        .where((datastore) => datastore.status == status.toString())
        .toList();
    return result;
  }
}
