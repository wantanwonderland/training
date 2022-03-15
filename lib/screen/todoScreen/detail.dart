import 'package:flutter/material.dart';
import 'package:training/model/todo.dart';
import 'package:training/screen/todoScreen/index.dart';

class ToDoDetail extends StatelessWidget {
  final ToDo todo;
  const ToDoDetail({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title!),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Text(todo.description!),
      ),
    );
  }
}
