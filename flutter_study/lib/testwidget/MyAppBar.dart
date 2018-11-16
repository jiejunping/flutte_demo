import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{

  //Widget子类中的字段往往都会定义为"final"
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {

    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),

      // Row 是水平方向的线性布局（linear layout）
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null  // null 会禁用 button
          ),

          new Expanded(
              child:title
          ),

          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: "search",
              onPressed: null
          )

        ],
      ),
      
    );

  }

}