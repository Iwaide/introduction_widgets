import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Myapp',
      home: MyScaffold()
    )
  );
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 56.0,
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'NavigationMenu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'ExampleTitle',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello World'),
            ),
          )
        ],
      ),
    );
  }
}
