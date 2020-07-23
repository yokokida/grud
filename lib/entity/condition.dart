import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Condition {
  String name;
  String bring;
  String others;
  String content;
  String attention;
  String address;
  String access;
  String papers;
  Condition({
    this.name,
    this.bring,
    this.others,
    this.content,
    this.attention,
    this.address,
    this.access,
    this.papers,
  });

  Map<dynamic, dynamic> toMap() {
    return {
      "name": name,
      "bring": bring,
      "others": others,
      "content": content,
      "attention": attention,
      "address": address,
      "access": access,
      "papers": papers,
    };
  }

  static Condition fromDoc(DocumentSnapshot doc) {
    if (doc == null) return null;

    return Condition(
      name: doc.data['name'],
      bring: doc.data['bring'],
      others: doc.data['others'],
      content: doc.data['content'],
      attention: doc.data['attention'],
      address: doc.data['address'],
      access: doc.data['access'],
    );
  }

//  Map<String, dynamic> toJson() => {
//        "name": name,
//        "bring": bring,
//        "others": others,
//        "content": content,
//        "attention": attention,
//        "address": address,
//        "access": access,
//        "papers": papers,
//      };
//
////    Condition.fromMap(Map snapshot, String id):
//  Condition.fromSnapshot(DocumentSnapshot snapshot)
//      : name: doc.data['name'],
//        bring: doc.data['bring'],
//        others: doc.data['others'],
//        content: doc.data['content'],
//        attention: doc.data['attention'],
//        address: doc.data['address'],
//        access: doc.data['access'],
//        papers: doc.data['papers'];
}
