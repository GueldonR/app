import 'package:app/Features/dailynews/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:app/Features/dailynews/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  RemoteArticleBloc() : super(const RemoteArticlesLoading()) {
    on<GetArticle>(onGetArticle);
  }

  void onGetArticle(GetArticle event, Emitter<RemoteArticleState> emit) async {
    // TODO: Implement your logic here
    // Example: emit(RemoteArticlesLoaded(articles: []));
  }
}
