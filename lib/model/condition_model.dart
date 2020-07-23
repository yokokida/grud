import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:crud/entity/condition.dart';

// conditionsドキュメントの読み込み
class ConditionModel extends ChangeNotifier {
  var conditions = [];

  Future fetchCondition() async {
    final docs =
        await Firestore.instance.collection('conditions').getDocuments();
    final conditions = docs.documents.map((doc) => Condition()).toList();
    this.conditions = conditions;
    notifyListeners();
  }
}
