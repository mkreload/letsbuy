import 'package:flutter/material.dart';

import 'config/config.dart';
import 'components/add_item_popup.dart';

class HomeApp extends StatefulWidget{

  @override
  State createState(){
    return HomeState();
  }

}

class HomeState extends State{

  Future<void> addItem() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AddItemElement();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: <Widget>[
            Text("Let's", style: TextStyle(color: Colors.redAccent),),
            Text("Buy")
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: addItem,
          )
        ],
      ),
      body: AppContent(),
    );
  }
}

class AppContent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        LimitedBox(
          maxHeight: 100,
          maxWidth: 10,
          child: Container(
            margin: EdgeInsets.only(bottom: 5.0),
            color: Colors.red,
          ),
        ),
      ],
    );
  }

}


