import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              //填充尚未被其他子项占用的的剩余可用空间。
              // Expanded可以拥有多个children，
              // 然后使用flex参数来确定他们占用剩余空间的比例。
              new Expanded(
                child: new Text("test1"),
              ),
              new Expanded(
                  child: new Text.rich(
                      TextSpan(
                        text: 'Hello world!',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                  )

              ),

              new Expanded(
                  child: new Text("test3")
              )
            ],
          ),
        ],
      ),
    );
  }
}
