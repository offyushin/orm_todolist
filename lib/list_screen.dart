import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:orm_todolist/todo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final todos = [
    Todo(
      title: 'titl1',
      dateTime: 12321,
    ),
    Todo(
      title: 'titl1',
      dateTime: 12321,
    ),
    Todo(
      title: '가나다라뿅',
      dateTime: 123123214,
    ),
  ];

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
        children: todos
            .map((todo) => ListTile(
                  title: Text(todo.title),
                  subtitle: Text('${todo.dateTime}'),
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/create_screen'),

        child: const Icon(Icons.add),
      ),
    );
  }
}
