import 'package:flutter/material.dart';
import 'package:training/sidebar.dart';

import 'desc_text.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Sidebar(),
      appBar: AppBar(
        title: const Text("First"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: const <Widget>[
              Icon(
                Icons.wifi_rounded,
                color: Colors.blueAccent,
                size: 50.0,
              ),
              DescText(
                iconText: 'WiFI',
              ),
            ]),
            Column(children: const <Widget>[
              Icon(
                Icons.power,
                color: Colors.red,
                size: 50.0,
              ),
              DescText(
                iconText: 'Power',
              )
            ]),
            Column(children: const <Widget>[
              Icon(
                Icons.storage,
                color: Colors.green,
                size: 50.0,
              ),
              DescText(
                iconText: 'Storage',
              )
            ]),
          ],
        ),
      ),
    );
  }
}
