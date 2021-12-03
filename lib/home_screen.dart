import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _updateCounter(String op) {
    setState(() {
      if (op == "+") {
        _counter++;
      } else if (op == "-" && _counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.grey,
                child: const Center(
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                _updateCounter("-");
              },
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            GestureDetector(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                _updateCounter("+");
              },
            ),
          ],
        ),
      ),
    );
  }
}
