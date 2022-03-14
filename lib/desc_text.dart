import 'package:flutter/material.dart';

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
      style: const TextStyle(color: Color(0xfff1c40f), fontSize: 20.0),
    );
  }
}
