import 'package:flutter/material.dart';
import 'package:orm_todolist/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(Todo) onTap;

  const TodoItem({
    Key? key,
    required this.todo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(todo);
      },
      leading: todo.isDone
          ? const Icon(Icons.check_box, color: Colors.green)
          : const Icon(Icons.check_box_outline_blank),
      title: Text(
        todo.title,
        style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black),
      ),
      subtitle: Text('${todo.dateTime}',
          style: TextStyle(color: todo.isDone ? Colors.grey : Colors.black)),
    );
  }
}
