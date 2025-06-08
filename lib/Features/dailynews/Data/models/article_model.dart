import 'package:app/Features/dailynews/Domain/entities/article_entity.dart';

// this model represents the articles in the data layer. And will be used to fetch the xml data from the Rss
import 'package:xml/xml.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
  });

  // lägg till den vanliga dio och stringtojson
}
