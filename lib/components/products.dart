import 'package:flutter/material.dart';
import 'package:clothapp/pages/product_details.dart';


   class Products extends StatefulWidget {
  @override
  _ProductState createstate() => _ProductState();

  @override
  State<StatefulWidget> createState() {
   return _ProductState();
  }
}
  class _ProductState extends State<Products>{
  var product_list=[
    {
      "name":"Blazer",
      "picture":"assets/images/products/blazer1.jpeg",
      "old_price":120,
          "price":85,
    },
    {

"name":"Blazer",
"picture":"assets/images/products/blazer2.jpeg",
"old_price":120,
"price":85,

},
    {
"name":"skt",
"picture":"assets/images/products/skt1.jpeg",
"old_price":90,
"price":70,

},
    {
"name":"shoe",
"picture":"assets/images/products/shoe1.jpg",
"old_price":100,
"price":60,

},
    {
      "name":"hills",
      "picture":"assets/images/products/hills1.jpeg",
      "old_price":80,
      "price":70,

    },
    {
      "name":"hills",
      "picture":"assets/images/products/hills2.jpeg",
      "old_price":100,
      "price":70,

    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
        gridDelegate: new  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
        itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Single_prod (

        product_name:product_list[index]['name'],
    prod_picture: product_list[index]['picture'],
    prod_old_price: product_list[index]['old_price'],
    prod_price: product_list[index]['price'],
        ),
        );
        });

    }

}
class Single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
Single_prod({
    this.product_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price,

}
    );



  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
        child: Material(
        child:InkWell(
          onTap:()=>Navigator.of(context).push(
              new MaterialPageRoute(builder: (context)=> new ProductDetails(

                //here we are passing the value of the product to the product detail page
                product_detail_name: product_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,
              ))),


    child:GridTile(
    footer: Container(
    color: Colors.white,
    child:new Row(children: <Widget>[
      Expanded(
    child:Text(product_name,style: TextStyle
      (fontWeight: FontWeight.bold,fontSize: 16.0),),),
      new Text ("\$${prod_price}",style: TextStyle
        (color: Colors.pink,fontWeight: FontWeight.bold),)
    ],)
    ),
    child: Image.asset(prod_picture,
    fit: BoxFit.cover,)),
    ),
    )),
    );
  }
}
