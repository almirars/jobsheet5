import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';
import 'home_page.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;

  ItemPage({Key key, this.tempItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade700,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: new IconButton(
                icon: new Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            backgroundColor: Colors.pink[100],
            title: Text("Item Detail"),
          ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.pink[50],
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Nama : " + tempItem.name,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Price : " + tempItem.price.toString(),
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Text("Color : " + tempItem.color.toString(),
                  style: TextStyle(color: Colors.black)),
            ]),
          )),
    );
  }
  // This widget is the root of your application.

}
