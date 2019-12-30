import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Center(child: MyText('homogea')),
  ));
}

class MyText extends StatelessWidget {
  MyText(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
