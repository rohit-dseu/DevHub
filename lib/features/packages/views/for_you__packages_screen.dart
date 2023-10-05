import 'package:devhub/core/common/post_over_view_header.dart';
import 'package:devhub/core/common/post_overview_card.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/common/overall_details_card.dart';

class ForYouPackagesScreen extends ConsumerWidget {
  const ForYouPackagesScreen({super.key});

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
              heading: 'Flutter Packages',
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
                      product: 'Node js Packages',
                    ),
                  );
                }),
              ),
            ),
            PostsOverviewHeader(
              heading: 'Node js Packages',
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
                      product: 'Flutter',
                    ),
                  );
                }),
              ),
            ),
            PostsOverviewHeader(
              heading: 'Python Packages',
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
          ],
        ),
      ),
    );
  }
}
