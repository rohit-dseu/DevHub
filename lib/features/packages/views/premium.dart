import 'package:devhub/core/common/premium_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/constants.dart';

class Premium extends ConsumerWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: List.generate(
          30,
          (index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: PremiumListTile(
                imagePath: Constants.logoPath,
                title: 'Hello World',
                stars: 5,
                price: 1000,
              ),
            );
          },
        ),
      ),
    );
  }
}
