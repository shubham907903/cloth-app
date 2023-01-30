import 'package:flutter/material.dart';
//my imports
import 'package:clothapp/components/cart_products.dart';

class Cart extends StatefulWidget {

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Text('Cart'),
        actions: <Widget>[

          new IconButton(icon:Icon(Icons.search,color: Colors.white),onPressed: (){}),
          new IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white),onPressed: (){})
        ],
      ),
      body: Cart_products(),



      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children:[

            Expanded(child: ListTile(
              title: new Text("Total"),
            subtitle: new Text("\$230"),


          )
                ) ,
                Expanded(
                child: new MaterialButton(onPressed: (){},
                child:new Text("Check out",
        style: TextStyle(color: Colors.white),),
                  color:Colors.pink,),
        ),
      ],
    ),

        ),

    );
  }
}
