// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticalModel>> getTopHeadlines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=8dc677c40bb24043b9406b7bd145fce1&country=us&category=$category');
      var jsonData = response.data;
      var articles = jsonData['articles'];

      // for (var article in articles) {
      //   print(article['author']);
      // }
      List<ArticalModel> articelList = [];

      for (var article in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(article);
        articelList.add(articalModel);
        // print(articelList);
      }
      return articelList;
    } catch (e) {
      return [];
    }
  }
}
