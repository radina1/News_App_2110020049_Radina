import 'dart:convert';

import 'package:http/http.dart';
import 'package:news_app_2110020049/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = Client();

  Future<List<Article>> getArticleAutomotive() async {
    final queryParameters = {
      //'country': 'id',
      //'category': 'technology',
      //'apikey': 'api_key_yang_anda_punya'
      'q': 'automotive',
      'apikey': 'c67643f9b2e5404eb44ce440798b2191'
    };

    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Cant't get the articles");
    }
  }

  Future<List<Article>> getArticleSport() async {
    final queryParameters = {
      'country': 'id',
      'apikey': 'c67643f9b2e5404eb44ce440798b2191',
      'category': 'sport',
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Cant't get the articles");
    }
  }
}
