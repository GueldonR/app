// gör om hela filen
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:app/Features/dailynews/Data/models/article_model.dart';
import 'package:app/shared/core/constants/constants.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: newsBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;
  // get newest articles

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("category") String? category,
  });
}
