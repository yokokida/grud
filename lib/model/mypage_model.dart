import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddApplicationModel extends ChangeNotifier {
  String appNameKanji = '';
  String appNameKana = '';
  String appBirth = '';
  String appAdd = '';
  String appJobs = '';
  String appLicence = '';

  Future addApplicationToFirebase() async {
    Firestore.instance.collection('applications').add({
      'name_kanji': appNameKanji,
      'name_kana': appNameKana,
      'birth': appBirth,
      'add': appAdd,
      'jobs': appJobs,
      'licence': appLicence,
    });
  }
}
