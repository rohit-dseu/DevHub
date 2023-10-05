import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final int totalPosts;

  const CategoryTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.totalPosts,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(title),
      subtitle: Text('Total Posts: $totalPosts'),
    );
  }
}
