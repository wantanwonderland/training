import 'package:flutter/material.dart';
import 'package:training/model/todo.dart';
import 'package:training/screen/todoScreen/detail.dart';
import 'package:training/sidebar.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key}) : super(key: key);

  final todos = List<ToDo>.generate(
      20,
      (i) => ToDo(
          title: 'This is title $i', description: 'This is Description $i'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: ((context, i) {
            return ListTile(
              title: Text(todos[i].title!),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => ToDoDetail(
                              todo: todos[i],
                            ))))
              },
            );
          })),
    );
  }
}
