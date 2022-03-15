import 'package:flutter/material.dart';
import 'package:training/screen/flutter_layout.dart';
import 'package:training/screen/todoScreen/index.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('First Page'),
              leading: const Icon(
                Icons.home,
                color: Colors.red,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => TodoScreen())));
              },
            ),
            ListTile(
              title: const Text('Second Page'),
              leading: const Icon(
                Icons.ac_unit,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
