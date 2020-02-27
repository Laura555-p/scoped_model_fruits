import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../models/super_model.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var addedFruitNameStyle = Theme.of(context).textTheme.display4;

    return ScopedModelDescendant(
        rebuildOnChange: true,
        builder: (BuildContext context, Widget child, SuperModel model) {
          return ListView.builder(
            itemCount: model.fruits.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              title: Text(
                model.fruits[index].name,
                style: addedFruitNameStyle,
              ),
            ),
          );
        });
  }
}
