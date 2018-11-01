import 'package:flutter/material.dart';

//=> dart单行行数或方法的简写
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp 一般作为APP顶层的主页入口，可配置主题，多语言，路由等
    return new MaterialApp(
      //Scaffold一般用户页面的承载Widget，包含appbar、snackbar、drawer
      // 等material design的设定
      home: Scaffold(
        //一般用于Scaffold的appbar ，内有标题，二级页面返回按键等
        appBar: AppBar(
          //显示文本，几乎都会用到，主要是通过style设置TextStyle来设置字体样式等
          title: Text(
            "Widget Use",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        //ListView来显示列表项,支持垂直和水平方向展示
        body: new ListView(
          children: <Widget>[
            //图片加载
            new Image.asset(
              "images/lake.jpg",
              height: 240,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
