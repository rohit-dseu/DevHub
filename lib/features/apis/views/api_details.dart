import 'package:devhub/core/constants/constants.dart';
import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiDetails extends ConsumerWidget {
  const ApiDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Title',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.lightShadowColor,
                  ),
                  child: Image.asset(
                    Constants.googlePath,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Open WetherMap Api',
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'OpenWetherMap ',
                        style: TextStyle(
                          color: AppColors.primary,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PostStatisticsDetailsCard(
                    label: 'Reviews',
                    icon: Icons.star,
                    color: AppColors.yellow,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  PostStatisticsDetailsCard(
                    label: 'Price',
                    icon: Icons.price_change,
                    color: AppColors.green,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  PostStatisticsDetailsCard(
                    label: 'Used by',
                    icon: Icons.groups_2_outlined,
                    color: AppColors.pinkAccent,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  PostStatisticsDetailsCard(
                    label: 'Accuracy',
                    icon: Icons.arrow_circle_up_sharp,
                    color: AppColors.orange,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  PostStatisticsDetailsCard(
                    label: 'Aditya',
                    icon: Icons.person,
                    color: AppColors.blue,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.lightShadowColor,
            ),
            const SizedBox(height: 8),
            const Text(
              'Api Link',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Flexible(
                  child: Text(
                    'http://api.flutter.dev/flutter/rendering/debugDumpRenderTree.html',
                    maxLines: 5,
                    style: TextStyle(
                      color: AppColors.blue,
                    ),
                  ),
                ),
                Icon(
                  Icons.copy,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1.5,
              color: AppColors.lightShadowColor,
            ),
            const SizedBox(height: 8),
            const Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            const Flexible(
              child: Text(
                'To determine if this offer is a good opportunity for you, you should consider your own goals, preferences, and priorities. Here are some personalized factors to think about:',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostStatisticsDetailsCard extends StatelessWidget {
  final String label;
  final Color color;
  final IconData icon;
  const PostStatisticsDetailsCard({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 32,
            color: color,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
