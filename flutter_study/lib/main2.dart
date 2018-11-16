import 'package:flutter/material.dart';
import 'package:flutter_study/shopingdemo/Product.dart';
import 'package:flutter_study/shopingdemo/ShopingListItem.dart';


void main() {
  runApp(new MaterialApp(

    title: "Shoping App",
    home: new ShoppingList(

      products: <Product>[

        new Product(name: "eggs"),
        new Product(name: "flour"),
        new Product(name: "chocolate chips")
      ],

    ),

  ));
}

class ShoppingList extends StatefulWidget {

  final List<Product> products;

  ShoppingList({Key key, this.products}) :super(key: key);

  @override
  _ShopingListState createState() => new _ShopingListState();

}

class _ShopingListState extends State<ShoppingList> {


  Set<Product> _shoppingCart = new Set<Product>();

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart)
        _shoppingCart.add(product);
      else
        _shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Shop List"),
      ),

      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product) {
          return new ShopingListItem(
            product: product,
            inCart: _shoppingCart.contains(product),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }


}