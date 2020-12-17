import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  final String text;

  OtherPage({Key key, this.text}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Text(widget.text),
      ),
    );
  }
}
