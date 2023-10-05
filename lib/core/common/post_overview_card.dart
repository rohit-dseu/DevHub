import 'package:devhub/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

import '../../theme/pallate.dart';

class PostOverviewCard extends StatelessWidget {
  final Size size;
  final String product;
  const PostOverviewCard({
    super.key,
    required this.size,
    required this.product,
  });

  void navigateToApis(BuildContext context) {
    Routemaster.of(context).push('/api');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToApis(context),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: AppColors.blueGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                Constants.logoPath, // Replace with your image path
                width: 100,
              ),
            ),

            const SizedBox(height: 12.0),

            // Product Name
             Text(
              product,
              style:const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8.0),

            // Product Reviews
            const Text(
              '4.5 stars (250)',
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
