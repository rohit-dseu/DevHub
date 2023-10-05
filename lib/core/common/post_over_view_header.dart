import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';


class PostsOverviewHeader extends StatelessWidget {
  final String heading;
  final VoidCallback onPressed;
  const PostsOverviewHeader({
    super.key,
    required this.heading,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: AppColors.white,
          ),
        ),
        InkWell(
          onTap: onPressed,
          splashColor: AppColors.pinkAccent,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: const Icon(
              Icons.keyboard_arrow_right_rounded,
              size: 34,
              color: AppColors.pinkAccent,
              weight: 5.0,
            ),
          ),
        )
      ],
    );
  }
}
