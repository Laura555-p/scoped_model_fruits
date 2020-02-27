import 'package:scoped_model/scoped_model.dart';
import 'cart_model.dart';
import 'list_model.dart';

class SuperModel extends Model with CartModel, ListModel {
  SuperModel._privateConstructor();

  static final SuperModel _instance = SuperModel._privateConstructor();

  static SuperModel get instance {
    return _instance;
  }
}
