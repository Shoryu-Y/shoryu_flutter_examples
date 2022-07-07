import 'package:amplify_app/common/extension/datetime_ext.dart';
import 'package:amplify_app/models_client/todo_client.dart';
import 'package:amplify_app/ui/todo_detail_page.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({super.key, required this.todo});

  final TodoClient todo;

  @override
  Widget build(BuildContext context) {
    final status = todo.status;
    final deadline = todo.deadline;
    final deadlineText = deadline != null ? deadline.md : 'none';

    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push<void>(
            MaterialPageRoute(builder: (context) => TodoDetailPage(todo: todo)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  todo.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Table(
                defaultColumnWidth: const IntrinsicColumnWidth(),
                children: [
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text('ステータス:', textAlign: TextAlign.right),
                      ),
                      Text(
                        '$status',
                        style: TextStyle(color: status.color),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text('〆切:', textAlign: TextAlign.right),
                      ),
                      Text(deadlineText),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
