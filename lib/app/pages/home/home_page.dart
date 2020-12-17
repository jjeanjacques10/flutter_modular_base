import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_flutter/app/pages/home/home_controller.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        child: Center(
          child: TextField(
            decoration: InputDecoration(labelText: 'Um Texto Qualquer'),
            onChanged: (value) => homeController.text = value,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, '/other/${homeController.text}');
        },
      ),
    );
  }
}
