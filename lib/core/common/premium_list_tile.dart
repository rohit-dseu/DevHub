import 'package:flutter/material.dart';

class PremiumListTile extends StatelessWidget {
  final String imagePath;
  final double price;
  final double stars;
  final String title;

  const PremiumListTile({
    required this.imagePath,
    required this.price,
    required this.stars,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: Text(title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  '\$${price.toStringAsFixed(2)}'), // Format price with two decimal places
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Text('$stars'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
