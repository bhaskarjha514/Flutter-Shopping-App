import 'package:flutter/material.dart';
import 'package:flutter_ecom/pages/product_details.dart';

//****************************************PRODUCT DETAILS CLASS ****************************

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Blazer",
      "picture":"assets/images/products/blazer1.jpeg",
      "old_price":120,
      "price":85,
    },

    {
      "name":"Girls Blazer",
      "picture":"assets/images/products/blazer2.jpeg",
      "old_price":100,
      "price":50,
    },

    {
      "name":"Versace",
      "picture":"assets/images/products/versace2.png",
      "old_price":1200,
      "price":750,
    },

    {
      "name":"versace2",
      "picture":"assets/images/products/versave.png",
      "old_price":1600,
      "price":1000,
    },
    {
      "name":"Dress",
      "picture":"assets/images/products/dress1.jpeg",
      "old_price":120,
      "price":85,
    },

    {
      "name":"Dress2",
      "picture":"assets/images/products/dress2.jpeg",
      "old_price":100,
      "price":50,
    },

    {
      "name":"Sun Glasses",
      "picture":"assets/images/products/goggles.png",
      "old_price":1200,
      "price":750,
    },


    {
      "name":"Shoes",
      "picture":"assets/images/products/shoe1.jpg",
      "old_price":120,
      "price":85,
    },
    {
      "name":"Jeans",
      "picture":"assets/images/products/pants1.jpg",
      "old_price":1600,
      "price":1000,
    },

    {
      "name":"Skirt",
      "picture":"assets/images/products/skt1.jpeg",
      "old_price":100,
      "price":50,
    },

    {
      "name":"Hills",
      "picture":"assets/images/products/hills1.jpeg",
      "old_price":1200,
      "price":750,
    },

    {
      "name":"Jacket",
      "picture":"assets/images/products/jacket.png",
      "old_price":1600,
      "price":1000,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(

                  // Passing The values of the product to the product details page.
                  builder: (context) => new ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,
              ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: new Row(children: <Widget>[
                      Expanded(
                        child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                      new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                    ],)
                  ),
                  child: Image.asset(prod_picture,
                  fit: BoxFit.cover,
                  )),
            ),)),
    );
  }
}

