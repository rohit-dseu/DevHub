import 'package:devhub/core/common/error_text.dart';
import 'package:devhub/core/common/post_tiles.dart';
import 'package:devhub/core/constants/constants.dart';
import 'package:devhub/features/apis/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/loader.dart';

class TopChartsScreen extends ConsumerWidget {
  const TopChartsScreen({super.key});

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
                  padding: EdgeInsets.all(8.0),
                  child: PostListTile(
                    imagePath: Constants.logoPath,
                    rank: index,
                    title: apis.api,
                    stars: apis.stars.toDouble(),
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
