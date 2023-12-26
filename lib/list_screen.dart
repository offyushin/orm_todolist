import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orm_todolist/todo.dart';
import 'package:orm_todolist/todo_item.dart';

import 'main.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo 리스트'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.done),
          )
        ],
      ),
      body: ListView(
        children: todos.values
            .map((todo) => TodoItem(
                  todo: todo,
                  onTap: (todo) async {
                    todo.isDone = !todo.isDone;
                    await todo.save();

                    setState(() {});
                  },
                  onDelete: (todo) async {
                    await todo.delete();

                    setState(() {});
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/create_screen');
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
