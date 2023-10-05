import 'package:devhub/core/common/post_over_view_header.dart';
import 'package:devhub/core/common/post_overview_card.dart';
import 'package:devhub/features/apis/controller/api_controller.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/error_text.dart';
import '../../../core/common/loader.dart';
import '../../../core/common/overall_details_card.dart';

class ForYouScreen extends ConsumerWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return ref.watch(getTopPickApisProvider).when(
        data: (data) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  OverallDetailsCard(
                    cardGradient: AppColors.roundedButtonGradient,
                  ),
                  PostsOverviewHeader(
                    heading: 'Top picks',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(data.length, (index) {
                        final item = data[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PostOverviewCard(
                            size: size,
                            product: item.api,
                          ),
                        );
                      }),
                    ),
                  ),
                  PostsOverviewHeader(
                    heading: 'Newly Added',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(6, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PostOverviewCard(
                            size: size,
                            product: '',
                          ),
                        );
                      }),
                    ),
                  ),
                  PostsOverviewHeader(
                    heading: 'Wether Apis',
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(data.length, (index) {
                        final item = data[index];

                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PostOverviewCard(
                            size: size,
                            product: item.api,
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        error: (error, stackTrace) => ErrorText(error: error.toString()),
        loading: () => const Loader());
  }
}
