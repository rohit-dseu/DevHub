import 'package:devhub/core/common/app_bar_tabs.dart';
import 'package:devhub/features/packages/views/categories.dart';
import 'package:devhub/features/packages/views/premium.dart';
import 'package:devhub/features/packages/views/top_charts_screen.dart';
import 'package:devhub/features/packages/views/for_you__packages_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../apis/views/for_you_screen.dart';

class PackageScreen extends ConsumerStatefulWidget {
  const PackageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PackageScreenState();
}

class _PackageScreenState extends ConsumerState<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            tabs: [
              AppBarTabs(label: 'For You'),
              AppBarTabs(label: 'Top Charts'),
              AppBarTabs(label: 'Premium'),
              AppBarTabs(label: 'Categories'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ForYouPackagesScreen(),
            TopChartsScreen(),
            Premium(),
            Categories(),
          ],
        ),
      ),
    );
  }
}
