import 'package:flutter/material.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('移動完了')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '会社名'),
            ),
            TextField(
              decoration: InputDecoration(hintText: '代表者名'),
            ),
            TextField(
              decoration: InputDecoration(hintText: '住所'),
            ),
            TextField(
              decoration: InputDecoration(hintText: '電話番号'),
            ),
            SizedBox(
              height: 60,
            ),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('保存'),
              onPressed: () {},
            ),
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text('削除'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
