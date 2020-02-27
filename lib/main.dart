import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import './models/super_model.dart';

import './screens/list_screen.dart';
import './screens/cart_screen.dart';

import './style/my_app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ScopedModel(
      model: SuperModel.instance,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'State Management Scoped Model',
        theme: myAppTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => MyList(),
          '/cart': (context) => MyCart(),
        },
      ),
    );
  }
}
