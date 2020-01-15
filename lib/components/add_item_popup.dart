import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'my_inputs_dialog.dart';

class AddItemElement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              'Novo Item',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple
              ),
            ),
            SizedBox.fromSize(size: Size.fromHeight(30.0),),
            Column(
              children: <Widget>[
                Form(
                    key: GlobalKey<FormState>(),
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
            SizedBox.fromSize(size: Size.fromHeight(20.0),),
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
                  onPressed: (){},
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