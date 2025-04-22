import 'package:dio/dio.dart';

import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsServise {
  Dio dio;

  NewsServise(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    String url =
        "https://newsdata.io/api/1/news?apikey=pub_54505040d267f11f37cf4753681d094d41a2a&country=eg&language=ar&category=$category";
    Response response = await dio.get(
      url,
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["results"];

    List<ArticalModel> articalList = [];
    for (var artical in articles) {
      articalList.add(ArticalModel.fromJson(artical));
    }

    return articalList;
  }
}
