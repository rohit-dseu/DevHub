import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/categories_list_tile.dart';
import '../../../core/constants/constants.dart';

class Categories extends ConsumerWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: Constants.categories.keys.map((categoryName) {
          final imagePath = Constants.categories[categoryName] ??
              ''; // Get the image path for the category
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryTile(
              imagePath: Constants.logoPath,
              title: categoryName,
              totalPosts: 100,
            ),
          );
        }).toList(),
      ),
    );
  }
}
