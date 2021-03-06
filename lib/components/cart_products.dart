import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 85,
      "Size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Versace",
      "picture": "assets/images/products/versace2.png",
      "price": 750,
      "Size": "M",
      "color": "Golden",
      "quantity": 1,
    },
    {
      "name": "Versace",
      "picture": "assets/images/products/versace2.png",
      "price": 750,
      "Size": "M",
      "color": "Golden",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          /*return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );*/
          return new Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_color: Products_on_the_cart[index]["color"],
            cart_prod_qty: Products_on_the_cart[index]["quantity"],
            cart_prod_size: Products_on_the_cart[index]["Size"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
          );
  
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final dynamic cart_prod_name;
  final dynamic cart_prod_picture;
  final dynamic cart_prod_price;
  final dynamic cart_prod_size;
  final dynamic cart_prod_color;
  final dynamic cart_prod_qty;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});
      
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
    leading: new Image.asset(
      cart_prod_picture,
      width: 80.0,
      height: 80.0,
    ),
    title: new Text(cart_prod_name),
    subtitle: new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: new Text("Size:"),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                cart_prod_size.toString(),
                style: TextStyle(color: Colors.red),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
              child: new Text("Color:"),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                cart_prod_color,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
        new Container(
          alignment: Alignment.topLeft,
          child: new Text(
            "\$${cart_prod_price.toString()}",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: Colors.red),
          ),
        ),
      ],
    ),
    trailing: new Column(
        children: <Widget>[
    Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
    Expanded(child: new Text(cart_prod_qty.toString())),
    Expanded(child: new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})),
        ],
      ),
        ),
      );
  }
}
