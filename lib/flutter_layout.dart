import 'package:flutter/material.dart';

class FlutterLayout extends StatelessWidget {
  const FlutterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout"),
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
              Text(
                'WiFI',
                style: TextStyle(color: Color(0xfff1c40f), fontSize: 20.0),
              ),
            ]),
            Column(children: const <Widget>[
              Icon(
                Icons.power,
                color: Colors.red,
                size: 50.0,
              ),
              Text(
                'Power',
                style: TextStyle(color: Color(0xfff1c40f), fontSize: 20.0),
              ),
            ]),
            Column(children: const <Widget>[
              Icon(
                Icons.storage,
                color: Colors.green,
                size: 50.0,
              ),
              Text(
                'Storage',
                style: TextStyle(color: Color(0xfff1c40f), fontSize: 20.0),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
