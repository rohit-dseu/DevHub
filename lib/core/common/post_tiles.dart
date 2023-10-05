import 'package:flutter/material.dart';

class PostListTile extends StatelessWidget {
  final String imagePath;
  final int rank;
  final String title;
  final double stars;

  const PostListTile({
    required this.imagePath,
    required this.rank,
    required this.title,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(title),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Rank: $rank'),
          Row(
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text('$stars'),
            ],
          ),
        ],
      ),
    );
  }
}
