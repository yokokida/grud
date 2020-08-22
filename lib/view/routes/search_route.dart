import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:crud/view/screen/condition.dart';
import 'package:crud/model/favorite_model.dart';

import 'package:crud/model/condition_model.dart';
import 'package:crud/entity/condition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("一覧"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.warning),
            onPressed: () {},
          ),
        ],
      ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('conditions').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('でーたが入っない');
            return ListView.builder(
              shrinkWrap: true,
              itemExtent: 100.0,
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) =>
                  _ConditionItem(context, snapshot.data.documents[index]),
            );
          }),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _ConditionItem(BuildContext context, DocumentSnapshot document) {
    return Card(
      elevation: 20.0,
      child: ListTile(
        leading: Image.network(
          document['img'],
          fit: BoxFit.contain,
        ),
        title: Row(
          children: <Widget>[
            Text(document['name']),
          ],
        ),
        subtitle: Text(
          document['place'],
          textAlign: TextAlign.right,
        ),
        trailing: IconButton(
          icon: (_isFavo ? Icon(Icons.favorite_border) : Icon(Icons.favorite)),
          color: Colors.red[500],
          onPressed: toggleFavo(),
        ),
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
      ),
    );
  }
}
