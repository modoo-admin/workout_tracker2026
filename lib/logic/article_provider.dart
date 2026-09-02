import 'package:flutter/material.dart';
import '../models/article.dart';
import '../services/article_api_service.dart';

class ArticleProvider with ChangeNotifier {
  final ArticleApiService _apiService = ArticleApiService();

  List<Article> _articles = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<Article> get articles => _articles;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> fetchArticles() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _articles = await _apiService.getArticleData();
    } catch (e) {
      _errorMessage = e.toString();
      _articles = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
