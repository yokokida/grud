import 'package:crud/model/mypage_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//class Home extends StatefulElement {
//  Home(StatefulWidget widget) : super(widget);
//  _HomeState createState => _HomeState();
//}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddApplicationModel>(
      create: (_) => AddApplicationModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("マイページ"),
          backgroundColor: Colors.orange,
        ),
        body: Consumer<AddApplicationModel>(
          builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: '名前（漢字）',
                    ),
                    onChanged: (text) {
                      model.appNameKanji = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '名前（カタカナ）',
                    ),
                    onChanged: (text) {
                      model.appNameKana = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '生年月日',
                    ),
                    onChanged: (text) {
                      model.appBirth = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '住所',
                    ),
                    onChanged: (text) {
                      model.appAdd = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '経歴',
                    ),
                    onChanged: (text) {
                      model.appJobs = text;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: '資格・免許',
                    ),
                    onChanged: (text) {
                      model.appLicence = text;
                    },
                  ),
                  RaisedButton(
                    child: Text('保存するべ'),
                    onPressed: () async {
                      await model.addApplicationToFirebase();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
