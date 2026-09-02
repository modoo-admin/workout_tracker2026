class Article {
  final String postTitle;
  final String authorName;
  final String avatarURL;
  final String postDate;
  final String postURL;
  final String postExcerpt;
  final List<String> postTag;
  final String thumbnailURL;

  Article({
    required this.postTitle,
    required this.authorName,
    required this.avatarURL,
    required this.postDate,
    required this.postURL,
    required this.postExcerpt,
    required this.postTag,
    required this.thumbnailURL,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    // WordPress API v1.1 structure mapping
    final author = json['author'] as Map<String, dynamic>?;
    final tagsMap = json['tags'] as Map<String, dynamic>? ?? {};
    final postThumbnail = json['post_thumbnail'] as Map<String, dynamic>?;

    return Article(
      postTitle: json['title'] ?? '',
      authorName: author?['name'] ?? 'Unknown',
      avatarURL: author?['avatar_URL'] ?? '',
      postDate: json['date'] ?? '',
      postURL: json['URL'] ?? '',
      postExcerpt: json['excerpt'] ?? '',
      postTag: tagsMap.keys.toList(),
      thumbnailURL: postThumbnail?['URL'] ?? json['featured_image'] ?? '',
    );
  }
}
