import 'package:devhub/core/common/post_tiles.dart';
import 'package:devhub/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopChartsScreen extends ConsumerWidget {
  const TopChartsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(30, (index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: PostListTile(
              imagePath: Constants.logoPath,
              rank: 1,
              title: 'Hello World',
              stars: 5,
            ),
          );
        }),
      ),
    );
  }
}
