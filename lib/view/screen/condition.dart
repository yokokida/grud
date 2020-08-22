import 'package:flutter/material.dart';
import 'package:crud/entity/condition.dart';
import 'package:intl/intl.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:crud/model/condition_model.dart';

// ignore: must_be_immutable
class ConditionDetail extends StatefulWidget {
  String img;
  String name;
  String bring;
  String others;
//  String content;
//  String attention;
//  String address;
//  String access;
//  String papers;
  String place;

  ConditionDetail({
    String img,
    String name,
    String bring,
    String others,
//      String content,
//      String attention,
//      String address,
//      String access,
//      String papers
    String place,
  }) {
    this.img = img;
    this.name = name;
    this.bring = bring;
    this.others = others;
//    this.content = content;
//    this.attention = attention;
//    this.address = address;
//    this.access = access;
//    this.papers = papers;
    this.place = place;
  }

  @override
  _ConditionDetailState createState() => _ConditionDetailState();
}

class _ConditionDetailState extends State<ConditionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.call),
              onPressed: () => {},
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButton(
                icon: Icon(Icons.dehaze),
                onPressed: () => {},
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Image.network(this.widget.img),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text('会社名'),
                      ),
                      Text(this.widget.name),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Text('持ち物'),
                    ),
                    Text(this.widget.bring),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: Text(this.widget.others),
                ),
//              Text(this.content),
//              Text(this.attention),
//              Text(this.address),
//              Text(this.access),
//              Text(this.papers),
                RaisedButton(child: Text('応募ボタン'), onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.amberAccent,
    );
  }
}

//class ConfirmResume extends StatelessWidget {
//  ConfirmResume(
//  title: Text('以下の履歴書で応募しても大丈夫でしょうか？'),
//  content:
//  );
//}
