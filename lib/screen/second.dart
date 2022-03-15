import 'package:flutter/material.dart';
import 'package:training/sidebar.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("Second Layout"),
      ),
      body: const Text('test'),
    );
  }
}
