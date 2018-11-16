import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increate() {
    //This call to setState tells the Flutter framework that
    // something has changed in this State, which causes it to rerun
    // the build method below so that the display can reflect the
    // updated values. If we changed _counter without calling
    // setState(), then the build method would not be called again,
    // and so nothing would appear to happen.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
//        new RaisedButton(
//          onPressed: _increate,
//          child: new Text("increate"),
//        ),
        new CounterIncrementor(_increate),
        new CountterDisplay(_counter),
      ],
    );
  }
}

class CountterDisplay extends StatelessWidget {
  final int count;

  CountterDisplay(this.count);

  @override
  Widget build(BuildContext context) {
    return new Text("Count: $count");
  }
}

class CounterIncrementor extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrementor(this.onPressed);

  @override
  Widget build(BuildContext context) {
    //有抬起效果和按压有墨水效果的按钮
    return new RaisedButton(
      onPressed: onPressed,
      color: Colors.blueAccent,
      child: new Text("increate"),
    );
  }
}
