import 'package:amplify_app/models/ModelProvider.dart';
import 'package:amplify_app/models_client/todo_client.dart';

extension TodoExt on Todo {
  static Todo fromClient(TodoClient client) => Todo(
        id: client.id,
        title: client.title,
        description: client.description,
        status: client.status.toString(),
        deadline: client.deadline?.millisecondsSinceEpoch,
        createdAt: client.createdAt.millisecondsSinceEpoch,
      );

  TodoClient get toClient => TodoClient.fromDatastore(this);
}
