
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  HorizontalList({Key key}) : super(key: key);

  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
   
       child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
           Category(
            
             image_location: "assets/cat/shirt.png",
              image_caption: "Shirts",
           ),
            Category(
           
             image_location: "assets/cat/shirt.png",
               image_caption: "Shirts",
           ),
            Category(
             
             image_location: "assets/cat/shirt.png",
             image_caption: "Shirts",
           ),
            Category(
             
             image_location: "assets/cat/shirt.png",
             image_caption: "Shirts",
           ),
            Category(
           
             image_location: "assets/cat/shirt.png",
               image_caption: "Shirts",
           ),
          ],
       ),
    );
  }
}

class Category extends StatelessWidget {
  // const Category({Key key}) : super(key: key);
  final String image_location;
  final String image_caption;
  Category({this.image_caption,this.image_location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,width: 100.0,height: 80.0,),
            subtitle: Container(
              alignment: Alignment.center,

              child: Text(image_caption)),
          ),
        ),
      ),
    );
  }
}