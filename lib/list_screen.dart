import 'package:flutter/material.dart';
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
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
