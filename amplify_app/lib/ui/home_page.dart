import 'package:amplify_app/common/enum/status_filter_category.dart';
import 'package:amplify_app/controller/todo_controller.dart';
import 'package:amplify_app/models_client/todo_client.dart';
import 'package:amplify_app/ui/add_todo_page.dart';
import 'package:amplify_app/ui/widget/item_picker.dart';
import 'package:amplify_app/ui/widget/todo_card.dart';
import 'package:amplify_app/util/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomeState();
}

class _HomeState extends ConsumerState<HomePage> {
  StatusFilterCategory category = StatusFilterCategory.all;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final todoStream = ref.watch(todoStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo'),
        actions: [
          IconButton(
            onPressed: () {
              showCupertinoModalPopup<void>(
                context: context,
                builder: (context) {
                  return ItemPicker(
                    children: List.generate(
                      StatusFilterCategory.values.length,
                      (index) {
                        final status =
                            StatusFilterCategory.values[index].status;
                        final title =
                            status == null ? 'All' : status.toString();
                        return Text(
                          title,
                          style: TextStyle(color: status?.color),
                        );
                      },
                    ),
                    onSelectedItemChanged: (index) {
                      final newCategory = StatusFilterCategory.values[index];
                      setState(() {
                        category = newCategory;
                      });
                    },
                  );
                },
              );
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: todoStream.when(
        data: (snapshot) {
          final items = snapshot.items;
          final filteredItems = category.getFilteredTodo(items);
          return ListView.builder(
            padding: const EdgeInsets.only(bottom: 100),
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              final todo = TodoClient.fromDatastore(filteredItems[index]);
              return TodoCard(todo: todo);
            },
          );
        },
        error: (object, stackTrace) {
          logger.warning('object: $object\nstackTrace: $stackTrace');
          return const SizedBox();
        },
        loading: () {
          return const Text('読み込み中');
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => const AddTodoPage(),
            ),
          );
        },
      ),
    );
  }
}
