import 'package:flutter/material.dart';
import 'package:flutter_application_5/article.dart';

class ArticleDetailPage extends StatelessWidget {
  static const routeName = '/article_detail';

  final Article article;
  const ArticleDetailPage({required this.article});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        child: Column (
          children: [
            Hero(
                tag: 'image-${article.urlToImage}',
                child: Image.network(
                article.urlToImage
            ),),
            Padding(
                padding: EdgeInsets.all(10),
                child : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(article.description),
                    Divider(color: Colors.grey),
                    Text(
                        article.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                    ),
                    Divider(color: Colors.grey),
                    Text('Date: ${article.publishedAt}'),
                    SizedBox(height: 10),
                    Text('Author: ${article.author}'),
                    Divider(color: Colors.grey),
                    Text(
                      article.content,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        child: Text('Read More'),
                        onPressed:(){
                          Navigator.pushNamed(context, ArticleDetailPage.routeName, arguments: article);
                        },
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}