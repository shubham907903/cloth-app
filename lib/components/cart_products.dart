import 'package:flutter/material.dart';
class Cart_products extends StatefulWidget {

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart=[

  {
  "name":"Blazer",
  "picture":"assets/images/products/blazer1.jpeg",
  "price":85,
    "size":"M",
    "color":"Black",
    "Quantity":1,
  },
    {
      "name":"Blazer",
      "picture":"assets/images/products/dress1.jpeg",
      "price":50,
      "size":"M",
      "color":"Red",
      "Quantity":1,
    },
    {
      "name":"Blazer",
      "picture":"assets/images/products/skt1.jpeg",
      "price":50,
      "size":"M",
      "color":"Red",
      "Quantity":1,
    },
    {
      "name":"Blazer",
      "picture":"assets/images/products/skt2.jpeg",
      "price":50,
      "size":"M",
      "color":"Red",
      "Quantity":1,
    },
  ];


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(

      itemCount: Products_on_the_cart.length,
      itemBuilder: (context,index){
        return Single_cart_product(
          cart_product_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_qty: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );
      }
    );
  }
}
class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
 final cart_prod_color;
 final cart_prod_qty;

 Single_cart_product({
    this.cart_product_name,
   this.cart_prod_picture,
   this.cart_prod_price,
   this.cart_prod_size,
   this.cart_prod_color,
   this.cart_prod_qty,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading section//
        leading: new Image.asset(cart_prod_picture,width: 80.0,height: 80.0,),


        // title section //
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            //Row inside the column
            new Row(
              children: <Widget>[


                // this section is for the size of the product //
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size"),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child:new Text (cart_prod_size,style: TextStyle(color:Colors.pink),),

                ),
                // this section is for the product color  //



              new  Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("Color"),),
                Padding (
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_color,style: TextStyle(color: Colors.pink),),
                )

              ],
            ),

            // =======   the product price  =============//
            new Container (
              alignment: Alignment.topLeft,
              child: new Text("\$${cart_prod_price}",
                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,
              color: Colors.pink),)
            )

          ],
        ),
        trailing: new Column(
          children:<Widget>[
          new IconButton(icon: Icon(Icons.arrow_drop_up),onPressed: null),
          new Text("$cart_prod_qty"),
          new IconButton(icon: Icon(Icons.arrow_drop_down),onPressed: null),
      ],
        ),
      ),
    );
  }
}





