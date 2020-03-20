import 'package:flutter/material.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../models/super_model.dart';

class CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var priceStyle = Theme.of(context).textTheme.display4;

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScopedModelDescendant(
                rebuildOnChange: true,
                builder:
                    (BuildContext context, Widget child, SuperModel model) {
                  return Text('\$${model.totalPrice}', style: priceStyle);
                }),
            SizedBox(width: 25),
            FlatButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Buying not supported yet')));
              },
              color: Colors.white,
              child: Text(
                'Buy',
                style: TextStyle(color: Colors.green[500]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
