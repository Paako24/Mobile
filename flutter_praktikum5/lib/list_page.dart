import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/article.dart';
import 'package:flutter_application_5/detail_page.dart';

class NewsListPage extends StatelessWidget{
  static const routeName = '/article_list';

  List<Article> parseArticles(String? json){
    if (json == null){
      return [];
    }
    final List parsed = jsonDecode(json);
    return parsed.map((json) => Article.fromJson(json)).toList();
  }

  Widget _buildArticleItem(BuildContext context, Article article){
    return ListTile(
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Hero(
          tag: 'image-${article.urlToImage}',
          child: Image.network(
            article.urlToImage,
            width: 100,
          ),
        ),
      ),
      title: Text(article.title),
      subtitle: Text(article.author),
      onTap: (){
      Navigator.pushNamed(context, ArticleDetailPage.routeName, arguments: article);
      },
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: FutureBuilder<String>(
        future: DefaultAssetBundle.of(context).loadString('assets/article.json'),
        builder: (context, snapshot){
          final List<Article> articles = parseArticles(snapshot.data);
          return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index){
              return _buildArticleItem(context, articles[index]);
            },
          );
        },
      ),
    );
  }
}

