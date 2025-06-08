// gör om hela filen
import 'package:app/Features/dailynews/Data/models/article_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/shared/core/constants/constants.dart';
import 'package:dio/dio.dart';

part 'news_api_service.dart';

@RestApi(baseUrl: newsBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio, dio) = _NewsApiService;
  @GET()
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles() {}
}
