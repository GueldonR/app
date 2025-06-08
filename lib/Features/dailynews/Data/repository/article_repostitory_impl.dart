// gör om hela filen
import 'package:app/Features/dailynews/Domain/entities/article_entity.dart';
import 'package:app/Features/dailynews/Domain/repositories/article_repository.dart';
import 'package:app/shared/core/resources/data_state.dart';

class ArticleRepostitoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleEntity>>> getNewsArticles() {
    // TODO: implement getNewsArticles
    throw UnimplementedError();
  }
}
