import 'package:clothapp/components/products.dart';
import 'package:flutter/material.dart';
import 'package:clothapp/main.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,

});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.pink,
          title:InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> new Homepage()));
        },
          child: Text('Fashapp')),
          actions: <Widget>[

            new IconButton(icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {})
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text(widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                              "\$${widget.product_detail_old_price}",
                              style: TextStyle(color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),)
                        ),
                        Expanded(
                            child: new Text(
                              "\$${widget.product_detail_new_price}",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.pink),)
                        ),


                      ],
                    ),
                  ),
                ),

              ),
            ),


            //=========the first buttons =======


            Row(
              children: <Widget>[


                //======= the size button ======

                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                    showDialog(context: context, builder:(context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                      child: new Text("close"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
                ),
                Expanded(child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context, builder:(context){
                      return new AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Choose a Color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),)
                        ],
                      );
                    });
                  },

                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
                ),
                Expanded(child: MaterialButton
                  ( onPressed: () {
                  showDialog(context: context, builder:(context){
                    return new AlertDialog(
                      title: new Text("Qty"),
                      content: new Text("Choose the quantity"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("close"),)
                      ],
                    );
                  });
                },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
                ),
              ],
            ),

//===========the second button==========//
            Row(
                children: <Widget>[


            //======= the size button ======

            Expanded(child: MaterialButton(onPressed: () {},
            color: Colors.pink,
            textColor: Colors.white,
              elevation: 0.2,
            child:new Text("Buy Now")

            ),
            ),
              new IconButton( icon: Icon(Icons.add_shopping_cart,color:Colors.pink),onPressed: (){})  ,
                  new IconButton( icon: Icon(Icons.favorite_border),color:Colors.pink,onPressed: (){})

                ],
                  ),
            Divider(color: Colors.pink,),
            new ListTile(
              title: new Text("Product details"),
              subtitle: new Text("lorem ipsum is simply text of the printing and typesetting industry."),
            ),
            Divider(color:Colors.pink),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0, 5.0),
                child:new Text("Product name",style: TextStyle(color:Colors.grey),),),
                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),)
              ],
            ),
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0, 5.0),
                  child:new Text("Product Brand",style: TextStyle(color:Colors.grey),),),
   Padding (padding: EdgeInsets.all(5.0),
    child: new Text("new"),),


                //remember to create product brand//
                Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("Brand X"),)
              ],
            ),



            // add the product condition
            new Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0,5.0, 5.0),
                  child:new Text("Product condition",style: TextStyle(color:Colors.grey),),),

              ],
            ),


            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Text("Similar products"),
            ),
            //Similar product section//
            Container(
              height: 340.0,
              child: Similar_products(),
            )



                ],
                ),
    );

  }
}
class Similar_products extends StatefulWidget {


  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_prod(


              product_name:product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            );

        });
  }
}
class Similar_single_prod extends StatelessWidget {

  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
 Similar_single_prod ({
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


















