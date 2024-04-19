import 'package:flutter/material.dart';
import 'package:rosss/container.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenWidget(), 
    );
  }
}

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('StatefulWidget')),
      body: SimpleWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewScreen()),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  const SimpleWidget({Key? key}) : super(key: key);
  @override
  State<SimpleWidget> createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("$_count"),
          ElevatedButton(onPressed: _handleButton, child: Text("Click me!"))
        ],
      ),
    );
  }
}
