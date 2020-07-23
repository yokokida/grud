import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/model/condition_model.dart';
import 'package:flutter/material.dart';
import 'package:crud/page/condition_route.dart';
import 'package:crud/entity/condition.dart';
import 'package:crud/model/favorite_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("一覧"),
        backgroundColor: Colors.orange,
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('conditions').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('でーたが入ってないよ');
            return ListView.builder(
              itemExtent: 100.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _ConditionItem(context, snapshot.data.documents[index]),
            );
          }),
    );
  }

  static const likedKey = 'liked_key';
  bool liked;
  @override
  void initState() {
    super.initState();
    _restorePersistedPreference();
  }

  void _restorePersistedPreference() async {
    var preferences = await SharedPreferences.getInstance();
    var liked = preferences.getBool(likedKey) ?? false;
    setState(() => this.liked = liked);
  }

  void _persistPreference() async {
    setState(() => liked = !liked);
    var preferences = await SharedPreferences.getInstance();
    preferences.setBool(likedKey, liked);
  }

  // ignore: non_constant_identifier_names
  Widget _ConditionItem(BuildContext context, DocumentSnapshot document) {
    return Card(
      elevation: 20,
      color: Colors.white,
      child: InkWell(
        onTap: () => {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ConditionDetail(
                        img: document['img'],
                        name: document['name'],
                        bring: document['bring'],
                        others: document['others'],
                      ))),
        },
        child: Container(
          height: 300.0,
          width: 200.0,
          child: Row(
            children: <Widget>[
              Image.network(document['img']),
              Column(
                children: <Widget>[
                  Text(
                    document['name'],
                  ),
                  Text(
                    document['place'],
                  ),
                  FlatButton(
                    child: new Icon(
                      liked == true ? Icons.favorite : Icons.favorite_border,
                      color: liked == true ? Colors.red : Colors.black38,
                    ),
                    onPressed: _persistPreference,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
