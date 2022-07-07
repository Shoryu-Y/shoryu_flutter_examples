import 'package:amplify_app/models_client/todo_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoDetailPage extends ConsumerWidget {
  const TodoDetailPage({super.key, required this.todo});

  final TodoClient todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('編集'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Description'),
            Text(
              todo.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
