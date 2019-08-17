import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_ecom/components/horizontal_listview.dart';
import 'package:flutter_ecom/components/Products.dart';

//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.blue,
//      child: Text('BYNDR', style: TextStyle(color: Colors.white),),
//    );
//  }
//}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
          AssetImage('assets/images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1500),
        dotSize: 4.0,
        dotColor: Colors.lightGreenAccent,
        indicatorBgPadding: 4.0,
      ),

    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){})
        ],
      ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              // Header
              new UserAccountsDrawerHeader(
                  accountName: Text('Suraj Mishra'),
                  accountEmail: Text('surajkumar123@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
              ),
              // Body
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home,color: Colors.black,),

                ),
              ),

              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person,color: Colors.blueAccent,),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('My Order'),
                  leading: Icon(Icons.shopping_basket,color: Colors.amber,),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(Icons.dashboard,color: Colors.lightGreenAccent,),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.red),

                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue),

                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green,),

                ),
              ),

            ],
          ),
        ),
      body: new ListView(
        children: <Widget>[
          // Image carousel Begins From Here
          image_carousel,
          // Padding Widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),),
          // Grid View

          Container(
            height: 320.0,
            child: Products(),
          )



        ],
      ),
    );
  }
}


