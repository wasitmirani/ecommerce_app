
// import 'package:carousel_pro/carousel_pro.dart';

import 'package:carousel_pro/carousel_pro.dart';

import '../colors/colors.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color(app_color),
        title: Text("LaraSit"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 20.0,
            onPressed: (){},

          ),
           IconButton(
            icon: Icon(Icons.shopping_cart),
            iconSize: 20.0,
            onPressed: (){},

          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Wasit Mirani"),
            accountEmail: Text("wasitmirani32@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
              color: Color(app_color),
            ),
         
              
             
          ),
  
          ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home,color: Colors.red,),
              onTap: (){},
            ),
              ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person,color: Colors.red,),
              onTap: (){},
            ),
              ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket,color: Colors.red,),
              onTap: (){},
            ),
             ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard,color: Colors.red,),
              onTap: (){},
            ),
              ListTile(
              title: Text("Favourites"),
              leading: Icon(Icons.favorite,color: Colors.red,),
              onTap: (){},
            ),
            Divider(),
             ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings,color: Colors.blue,),
              onTap: (){},
            ),
              ListTile(
              title: Text("About"),
              leading: Icon(Icons.info,color: Colors.green,),
              onTap: (){},
            ),
        ],
        ),
      ),
      body: ListView(
          children: <Widget>[
        Image_silder,
          ],
      ),
    );
  }

Widget Image_silder= new Container(
  height: 200.0,
  
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [

     
      //  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
      // NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
      // AssetImage('assets/b3.jpg'),
      Image.asset('assets/b.jpg'),
            Image.asset('assets/b1.jpg'),
                Image.asset('assets/b2.jpg'),
                   Image.asset('assets/b2.jpg'),
      //  Image.asset('assets/app_image/b3.jpg'),
      // ExactAssetImage("assets/b1.jpg")
    ],
    autoplay: true,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
     dotSize: 3.0,
      dotSpacing: 15.0,
      dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 5.0,
      dotBgColor: Colors.purple.withOpacity(0.5),
      borderRadius: true,
      moveIndicatorFromBottom: 180.0,
      noRadiusForIndicator: true,
  )
  );
}

