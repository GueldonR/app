import 'package:equatable/equatable.dart';

// unrelated to the data, represents it in the domain and buisness logic. Its the logic root.
class ArticleEntity extends Equatable {
  final int? id;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;

  // constructor
  const ArticleEntity({
    this.id,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
  });

  @override
  List<Object?> get props {
    return [id, title, description, url, urlToImage, publishedAt];
  }
}
