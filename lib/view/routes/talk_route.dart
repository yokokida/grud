import 'package:flutter/material.dart';
import 'package:crud/parts/tile.dart';

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("連絡"),
        backgroundColor: Colors.orange,
      ),
      body: ListView(children: <Widget>[
        Tile(
          icon: Icons.person,
          username: "瓦テラス",
          message: "あがの夢うなぎ",
        ),
        Tile(icon: Icons.person, username: "新潟養蜂", message: "天然はちみつ"),
        Tile(icon: Icons.person, username: "百日百草", message: "野草酵素 百日百草"),
        Tile(icon: Icons.person, username: "大崎八海そば", message: "八海そば"),
      ]),
    );
  }
}
