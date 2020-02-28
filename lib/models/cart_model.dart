import 'list_model.dart';

import 'fruits_object.dart';

// In this way the CartModel extends a ListModel,
// now CartModel has access to all the methods of the ListModel
class CartModel extends ListModel {
  final List<int> _fruitIds = [];

  ///List of fruits in the cart.
  List<Fruit> get fruits => _fruitIds.map((id) => getById(id)).toList();

  ///The current total price in the cart.
  int get totalPrice =>
      fruits.fold(0, (total, current) => total + current.price);

  ///Adds (fruit) to cart. This is the only way to modify the cart from outside.
  void add(Fruit fruit) {
    _fruitIds.add(fruit.id);
    //This line tells (Model) that it should rebuild
    // the widgets that depends on it

    notifyListeners();
  }
}
