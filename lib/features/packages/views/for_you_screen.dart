import 'package:devhub/core/common/post_over_view_header.dart';
import 'package:devhub/core/common/post_overview_card.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/overall_details_card.dart';

class ForYouScreen extends ConsumerWidget {
  const ForYouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
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
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PostOverviewCard(
                      size: size, product: '',
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
                      size: size, product: '',
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
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PostOverviewCard(
                      size: size, product: '',
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
