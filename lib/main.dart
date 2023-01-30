import 'package:clothapp/components/horizontal_listview.dart';
import'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import'package:clothapp/components/horizontal_listview.dart';
import 'package:clothapp/components/products.dart';
import 'package:clothapp/pages/cart.dart';
//my own imports

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  )
  );
}
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {



  Widget build(BuildContext context) {

Widget image_carousel=new   Container(
  height: 200.0,
  child: new Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('images/c1.jpg'),
      AssetImage('images/m1.jpeg'),
      AssetImage('images/w3.jpeg'),
      AssetImage('images/w4.jpeg'),
      AssetImage('images/m2.jpg'),

    ],
    autoplay: true,
    dotSize: 4.0,
    dotColor: Colors.red,
    indicatorBgPadding: 2.0,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
  ),

);
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.pink,
        title: Text('Fashapp'),
        actions: <Widget>[

          new IconButton(icon:Icon(Icons.search,color: Colors.white),onPressed: (){}),
          new IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>new Cart()));
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader

              (accountName: Text('shubham sharma'),

                accountEmail: Text('Shubhamshub110@gmail.com'),

               currentAccountPicture: GestureDetector(

              child: new CircleAvatar(

              backgroundColor: Colors.grey,
               child: Icon(Icons.person,
                   color:Colors.white),

          ),
        ),
              decoration: new  BoxDecoration(
                color: Colors.pink
              )
            ),
            //body
            InkWell(
            onTap:(){} ,

           child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            )
            ),
            InkWell(
                onTap:(){} ,
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),
                )
            ),
            InkWell(
                onTap:(){} ,
                child: ListTile(
                  title: Text('My orders'),
                  leading: Icon(Icons.shopping_basket),
                )
            ),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
                } ,
                child: ListTile(
                  title: Text('Shopping cart'),
                  leading: Icon(Icons.shopping_cart,color:Colors.pink,),

                )
            ),
            InkWell(
                onTap:(){} ,
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite),
                )
            ),
            Divider(),

            InkWell(
                onTap:(){} ,
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings,color: Colors.orange),
                )
            ),
            InkWell(
                onTap:(){} ,

                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help,color: Colors.green),
                )
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
      //
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),),
          //Horizontal list view begins here
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),
          //grid view
          Container(
            height: 320,
            child:Products(),
          ),
        ],
      ),
    );
  }
}




