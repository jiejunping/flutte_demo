import 'package:flutter/material.dart';

//=> dart单行行数或方法的简写
void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget Use"),
        ),
      ),

    );
  }


}

