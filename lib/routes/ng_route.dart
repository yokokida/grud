import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新潟直送計画"),
        backgroundColor: Colors.orange,
      ),
      // ==== リストビューを追加 ==========
      body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        ListTile(title: Text("宣伝エリア（直送サイトに飛ぶ１）")),
        ListTile(title: Text("宣伝エリア（直送サイトに飛ぶ２）")),
        ListTile(title: Text("宣伝エリア（直送サイトに飛ぶ３）")),
      ]),
      // ===============================
    );
  }
}
