import 'package:flutter/material.dart';
import 'package:crud/view/routes/search_route.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("気になる応募先"),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      // ==== リストビューを追加 ==========
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        ListTile(title: Text("気になるバイト先")),
        ListTile(title: Text("気になるバイト先")),
      ]),
      // ===============================
    );
  }
}
