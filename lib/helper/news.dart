import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../models/articlemodel.dart';

//For General News list in HomeScreen
class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=97c097ccdabe44c7b80e1ffa2917cc15';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null &&
              element['description'] != null &&
              element['content'] != null &&
              element['title'] != null &&
              element['url'] != null) {
            ArticleModel articleModel = ArticleModel(
              //author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              //content: element['content'],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}

//For Particular category's list
class CategoryNews {
  List<ArticleModel> news = [];
  Future<void> getNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=97c097ccdabe44c7b80e1ffa2917cc15';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach(
        (element) {
          if (element['urlToImage'] != null &&
              element['description'] != null &&
              element['content'] != null &&
              element['title'] != null &&
              element['url'] != null) {
            ArticleModel articleModel = ArticleModel(
              //author: element['author'],
              title: element['title'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              //content: element['content'],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}
