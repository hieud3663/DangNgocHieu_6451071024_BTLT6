import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/view/9/article_view.dart';

class HomeArticleView extends StatelessWidget {
  const HomeArticleView({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = [
      {
        'title': 'Flutter Navigation Basics',
        'content': 'Học cách sử dụng Navigator để chuyển giữa các màn hình.',
      },
      {
        'title': 'StatefulWidget vs StatelessWidget',
        'content': 'Hiểu khi nào nên sử dụng từng loại widget một cách hiệu quả.',
      },
      {
        'title': 'Building ListView Efficiently',
        'content': 'Sử dụng ListView.builder cho các danh sách dài động.',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Article List'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              title: Text(article['title'] ?? ''),
              subtitle: Text(article['content'] ?? ''),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ArticleView(article: article),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
