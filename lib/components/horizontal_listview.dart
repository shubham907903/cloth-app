import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'cats/tshirt.jpg',
            image_caption: 'tshirt',
          ),
          Category(
            image_location: 'cats/jeans.jpeg',
            image_caption:'jeans',
          ),
          Category(
            image_location: 'cats/dress.jpeg',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'cats/shoe.jpg',
            image_caption: 'shoe',
          ),
          Category(
            image_location: 'cats/informal.jpeg',
            image_caption: 'informal',
          ),
          Category(
            image_location: 'cats/formal.jpeg',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'cats/accessories.jpeg',
            image_caption: 'accessories',
          ) ,

        ],
      ),
    );
  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({

    required this.image_location,
    required this.image_caption,
});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child:Container(
        width: 100.0,

      child: ListTile(
    title:Image.asset(image_location,
      width: 80.0,
      height: 80.0,),
    subtitle:Container(
      alignment: Alignment.topCenter,
      child: Text(image_caption,style: new TextStyle(fontSize: 12.0),),
    ),
    ),
    ),
    )
      ,);
  }
}



