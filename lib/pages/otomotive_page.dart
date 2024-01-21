import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_2110020049/components/customListTile.dart';
import 'package:news_app_2110020049/model/article_model.dart';
import 'package:news_app_2110020049/services/api_service.dart';

class  OtomotivePage extends StatefulWidget {
  const OtomotivePage({ Key key }) : super(key: key);

  @override
  State<OtomotivePage> createState() => _OtomotivePAgeState();
}

class _OtomotivePAgeState extends State<OtomotivePage> {
  @override
  Widget build(BuildContext context) {
    final ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/home_page');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'otomotive Article',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: client.getArticleAutomotive(),
        builder:
            (BuildContext, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> article = snapshot.data;
            return ListView.builder(
              itemCount: article.length,
              itemBuilder: (context, index) => 
                    customListTile(article[index], context),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      ),
    );
  }
}