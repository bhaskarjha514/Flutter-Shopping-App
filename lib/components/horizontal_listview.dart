import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/cat/tshirt.png',
            image_caption: 'Tshirt',
          ),
          Category(
            image_location: 'assets/images/cat/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/cat/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'assets/images/cat/shoe.png',
            image_caption: 'Shoe',
          ),
          Category(
            image_location: 'assets/images/cat/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'assets/images/cat/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'assets/images/cat/accessories.png',
            image_caption: 'Accessories',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
});
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
      title: Image.asset(image_location, width: 100.0,height: 80,),
      subtitle: Container(
        alignment: Alignment.topCenter,
        child: Text(image_caption, style: new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black87,backgroundColor: Colors.white70),),
      )
    ),
    ),
    ),);
  }
}

