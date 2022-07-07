import 'package:amplify_app/common/enum/todo_status.dart';
import 'package:amplify_app/common/extension/datetime_ext.dart';
import 'package:amplify_app/controller/todo_controller.dart';
import 'package:amplify_app/ui/widget/date_time_picker.dart';
import 'package:amplify_app/ui/widget/item_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddTodoPage extends ConsumerStatefulWidget {
  const AddTodoPage({super.key});

  @override
  ConsumerState<AddTodoPage> createState() => _AddTodoState();
}

class _AddTodoState extends ConsumerState<AddTodoPage> {
  late final TextEditingController titleController;
  late final TextEditingController detailController;
  late TodoStatus status;
  late DateTime deadline;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    detailController = TextEditingController();

    final now = DateTime.now();
    status = TodoStatus.waiting;
    deadline = DateTime(now.year, now.month, now.day + 1);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    detailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todoを追加'),
        actions: [
          TextButton(
            onPressed: () async {
              await ref.read(todoControllerProvider).addTodo(
                    title: titleController.value.text,
                    description: detailController.value.text,
                    status: status,
                    deadline: deadline,
                  );
              if (!mounted) {
                return;
              }
              Navigator.of(context).pop();
            },
            child: const Text('追加'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title', style: Theme.of(context).textTheme.headline6),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Text('Description', style: Theme.of(context).textTheme.headline6),
            TextField(
              controller: detailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 10),
            Text('Status', style: Theme.of(context).textTheme.headline6),
            ElevatedButton(
              onPressed: () {
                showCupertinoModalPopup<void>(
                  context: context,
                  builder: (context) {
                    return ItemPicker(
                      onSelectedItemChanged: (value) {
                        final newStatus = TodoStatus.values[value];
                        setState(() {
                          status = newStatus;
                        });
                      },
                      children: List<Widget>.generate(
                        TodoStatus.values.length,
                        (index) {
                          final status = TodoStatus.values[index];
                          return Text(status.toString());
                        },
                      ),
                    );
                  },
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('$status', style: TextStyle(color: status.color)),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text('Deadline', style: Theme.of(context).textTheme.headline6),
            Row(
              children: [
                Text(
                  'Date: ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                ElevatedButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (context) {
                        return DateTimePicker(
                          initialDateTime: deadline,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: (date) {
                            final newDate = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              deadline.hour,
                              deadline.minute,
                            );
                            setState(() {
                              deadline = newDate;
                            });
                          },
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(deadline.yMd),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Time: ',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                ElevatedButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (context) {
                        return DateTimePicker(
                          initialDateTime: deadline,
                          mode: CupertinoDatePickerMode.time,
                          onDateTimeChanged: (time) {
                            final newDate = DateTime(
                              deadline.year,
                              deadline.month,
                              deadline.day,
                              time.hour,
                              time.minute,
                            );
                            setState(() {
                              deadline = newDate;
                            });
                          },
                        );
                      },
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(deadline.hm),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
