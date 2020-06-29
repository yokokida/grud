import 'package:crud/screens/edit_product.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CREDの練習'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              size: 40,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EditProduct()));
            },
          )
        ],
      ),
    );
  }
}
