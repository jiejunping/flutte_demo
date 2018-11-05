import 'package:flutter/material.dart';
import 'package:flutter_study/testwidget/ImageStatelessageWideget.dart';
import 'package:flutter_study/constvalue/Const.dart';
import 'package:flutter_study/testwidget/MyAppBar.dart';

//=> dart单行行数或方法的简写
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Material应用程序以MaterialApp widget开始
    //MaterialApp 一般作为APP顶层的主页入口，可配置主题，多语言，路由等
    return new MaterialApp(
      //Scaffold一般用户页面的承载Widget，包含appbar、snackbar、drawer
      // 等material design的设定
      home: Scaffold(
//        //一般用于Scaffold的appbar ，内有标题，二级页面返回按键等
//        appBar: AppBar(
//          //显示文本，几乎都会用到，主要是通过style设置TextStyle来设置字体样式等
//          title: Text(
//            "Widget Use",
//            style: TextStyle(color: Colors.white, fontSize: 24),
//          ),
//          backgroundColor: Colors.greenAccent,
//        ),
        //ListView来显示列表项,支持垂直和水平方向展示
        body: new ListView(
          children: <Widget>[

            new MyAppBar(
              title: new Text(
                "title",
                style: Theme.of(context).primaryTextTheme.title,
              ),
            ),
            new ImageStatelessageWideget("images/lake.jpg",
            type: Const.assetImg,height: 200.0,),


          ],
        ),

          floatingActionButton: new FloatingActionButton(
          //tooltip一个提示字符串,在长按按钮时弹出
            tooltip: "Add",
            child: new Icon(Icons.add),
            onPressed: null //null 会禁用button
        ),
        
      ),
    );
  }
}
