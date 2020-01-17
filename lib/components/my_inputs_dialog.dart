import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:letsbuy/objects/item.dart';


class MyInputsDialog {

  static String name;
  static int count;
  static double price;

  static var controller = MoneyMaskedTextController(
      decimalSeparator: ',',
      thousandSeparator: '.',
      leftSymbol: 'R\$',
      precision: 2);

  static final inputName = TextFormField(
    showCursor: true,
    decoration: InputDecoration(
        labelText: 'Name',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
    ),
    onSaved: (value) => name = value,
    validator: (input) => input.length == 0 || input.startsWith(' ')? 'Adicione um item\n(Evite espaços)' : null,
  );

  static final inputUnid = TextFormField(
    decoration: InputDecoration(
      counterStyle: TextStyle(
          backgroundColor: Colors.red
      ),
      labelText: 'Unidade',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    ),
    keyboardType: TextInputType.number,
    validator: (input) => input.isEmpty || int.parse(input) <= 0 ? 'Adicione a quantidade de itens!' : null,
    onSaved: (value) => count = int.parse(value)
  );

  static final inputPrice = TextFormField(
    controller: controller,
    decoration: InputDecoration(
        labelText: 'Preço R\$',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
    ),
    keyboardType: TextInputType.number,
    onSaved: (value) {
      price = parseMoneyToDouble(value);
    },
    validator: (input) {
      return parseMoneyToDouble(input) == 0 ? 'Adicione algum valor' : null;
    },
  );

  static double parseMoneyToDouble(String money){
    var valor = money.split('R\$')[1].split(',');
    var decimalValue = valor[1];
    var naturalValue = valor[0].split('.').reduce((value, element) => value += element);
    return double.parse(naturalValue + '.' + decimalValue);

  }
}
