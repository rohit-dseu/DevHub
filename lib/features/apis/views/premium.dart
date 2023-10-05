import 'package:devhub/core/common/premium_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/error_text.dart';
import '../../../core/common/loader.dart';
import '../../../core/constants/constants.dart';
import '../controller/api_controller.dart';

class Premium extends ConsumerWidget {
  const Premium({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getAllApisProvider).when(
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(data.length, (index) {
                final apis = data[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PremiumListTile(
                    imagePath: Constants.logoPath,
                    title: apis.api,
                    stars: 5,
                    price: 1000,
                  ),
                );
              }),
            ),
          );
        },
        error: (error, stackTrace) => ErrorText(error: error.toString()),
        loading: () => const Loader());
  }
}
