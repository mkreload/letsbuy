import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:letsbuy/objects/item.dart';

import 'my_inputs_dialog.dart';

class AddItemElement extends StatelessWidget{

  var formKey = GlobalKey<FormState>();

  void saveItem(context){
    if(this.formKey.currentState.validate()){
      this.formKey.currentState.save();
      Item newItem = new Item(MyInputsDialog.name, MyInputsDialog.count, MyInputsDialog.price);
      Navigator.pop(context);
    }
  }

  Text _titlePopup = Text(
    'Novo Item',
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.purple
    ),
  );

  SizedBox _boxSpace(height) => SizedBox.fromSize(size: Size.fromHeight(height),);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            this._titlePopup,
            this._boxSpace(30.0),
            Column(
              children: <Widget>[
                Form(
                    key: this.formKey,
                    child: new Theme(
                      data: ThemeData(
                          hintColor: Colors.black,
                          primaryColor: Colors.purple,
                          secondaryHeaderColor: Colors.red,
                        cursorColor: Colors.purple
                      ),
                      child:  ListBody(
                        children: <Widget>[
                          MyInputsDialog.inputName,
                          SizedBox.fromSize(size: Size.fromHeight(10.0),),
                          MyInputsDialog.inputUnid,
                          SizedBox.fromSize(size: Size.fromHeight(10.0),),
                          MyInputsDialog.inputPrice
                        ],
                      )
                    ),
                ),
              ],
            ),
            this._boxSpace(20.0),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  textColor: Colors.white,
                  child: Text(
                    'cancelar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, right: 5.0),
                ),
                RaisedButton(
                  onPressed: (){
                    this.saveItem(context);
                  },
                  textColor: Colors.white,
                  child: Text(
                    'Ok',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.center,
                  ),
                  color: Colors.lightBlue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}