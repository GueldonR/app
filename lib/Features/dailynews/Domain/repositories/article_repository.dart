import 'package:app/Features/dailynews/Domain/entities/article_entity.dart';
import 'package:app/shared/core/resources/data_state.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
