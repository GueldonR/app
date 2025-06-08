// gör om hela filen
import 'dart:io';

import 'package:app/Features/dailynews/Data/data_sources/remote/news_api_service.dart';
import 'package:app/Features/dailynews/Domain/entities/article_entity.dart';
import 'package:app/Features/dailynews/Domain/repositories/article_repository.dart';
import 'package:app/shared/core/constants/constants.dart';
import 'package:app/shared/core/resources/data_state.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

class ArticleRepostitoryImpl implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepostitoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticles() async {
    try {
      final httpResponse = await _newsApiService.getNewsArticles(
        apiKey: apiKeyNews,
        category: queryCategory,
        country: queryCountry,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccessState(httpResponse.data);
      } else {
        return DataErrorState(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (error) {
      return DataErrorState(error);
    }
  }
}
