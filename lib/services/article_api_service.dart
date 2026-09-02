import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../models/article.dart';

class ArticleApiService {
  final String _endpoint = 'https://public-api.wordpress.com/rest/v1.1/read/tags/workout/posts';

  Future<List<Article>> getArticleData() async {
    try {
      final response = await http.get(Uri.parse(_endpoint));

      if (response.statusCode == 200) {
        final decodedBody = utf8.decode(response.bodyBytes);
        log('Article Data: $decodedBody');
        
        final Map<String, dynamic> data = json.decode(decodedBody);
        final List<dynamic> posts = data['posts'] ?? [];
        
        return posts.map((json) => Article.fromJson(json)).toList();
      } else {
        throw Exception('아티클 데이터를 불러오는데 실패했습니다. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('네트워크 오류가 발생했습니다: $e');
    }
  }
}
