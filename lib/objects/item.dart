class Item {

  String _name;
  int _count;
  double _price;

  Item(this._name, this._count, this._price) {
    print('New Object Item:\n' + toString());
  }

  get getName => this._name;
  set setName(name) => this._name = name;

  get getCount => this._count;
  set setCount(count) => this._count = count;

  get getPrice => this._price;
  set setPrice(price) => this._price = price;

  @override
  String toString() {
    // TODO: implement toString
    return 'name: ${getName}\ncount: ${getCount}\nprice: ${getPrice}';
  }

}