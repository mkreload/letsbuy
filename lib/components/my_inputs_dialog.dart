import 'package:flutter/material.dart';

class MyInputsDialog {

  static final inputName = TextFormField(
      showCursor: true,
      decoration: InputDecoration(
          hintText: 'Nome',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
      )
  );

  static final inputUnid = TextFormField(
    decoration: InputDecoration(
      counterStyle: TextStyle(
        backgroundColor: Colors.red
      ),
      hintText: 'Unidade',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    ),
    keyboardType: TextInputType.numberWithOptions(),
  );

  static final inputPrice = TextFormField(
    decoration: InputDecoration(
        hintText: 'Preço R\$',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
    ),
    keyboardType: TextInputType.numberWithOptions(decimal: true),
  );

}
