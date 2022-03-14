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

class DescText extends StatelessWidget {
  final String? iconText;
  const DescText({
    Key? key,
    this.iconText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$iconText",
      style: TextStyle(color: Color(0xfff1c40f), fontSize: 20.0),
    );
  }
}
