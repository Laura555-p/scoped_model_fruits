import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../models/super_model.dart';
import '../../models/fruits_object.dart';

class AddButton extends StatelessWidget {
  final Fruit fruit;

  const AddButton({Key key, @required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme.display2;

    return ScopedModelDescendant<SuperModel>(
        rebuildOnChange: true,
        builder: (BuildContext context, Widget child, SuperModel model) {
          return FlatButton(
            onPressed:
                model.fruits.contains(fruit) ? null : () => model.add(fruit),
            splashColor: Theme.of(context).primaryColor,
            child: model.fruits.contains(fruit)
                ? Icon(
                    Icons.check,
                    semanticLabel: 'Added',
                  )
                : Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.green[400],
                    child: Text(
                      'add fruit',
                      style: textTheme,
                    ),
                  ),
          );
        });
  }
}
