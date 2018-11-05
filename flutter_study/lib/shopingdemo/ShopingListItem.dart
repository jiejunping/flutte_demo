import 'package:flutter/material.dart';
import 'package:flutter_study/shopingdemo/Product.dart';
import 'package:flutter_study/shopingdemo/CartChangedCallBack.dart';

class ShopingListItem extends StatelessWidget{

  final Product product;
  final bool inCart;
  final CartChangedCallBack onCartChanged;

  //使用冒号 (:) 分隔初始化程序
  ShopingListItem(
  {Product product,this.inCart,this.onCartChanged}) :
        product = product,
        super(key: new ObjectKey(product));


  Color _getColor(BuildContext context){

    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context){

    if(!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {

    //listTile 列表平铺  行控件 ，可以方便创建一行，
    // 最多包含3行文本和可选的前导和尾随图标。最常用于Card和ListView
    return new ListTile(
      onTap: (){
        onCartChanged(product,!inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        child: new Text(product.name[0]),
      ),
      
      title: new Text(product.name,style: _getTextStyle(context),),
      
    );
  }


}