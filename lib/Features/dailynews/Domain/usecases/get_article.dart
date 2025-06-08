import 'package:app/Features/dailynews/Domain/entities/article_entity.dart';
import 'package:app/Features/dailynews/Domain/repositories/article_repository.dart';
import 'package:app/shared/core/resources/data_state.dart';
import 'package:app/shared/core/usecase/usecase.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}) {
    return _articleRepository.getNewsArticles();
  }
}
