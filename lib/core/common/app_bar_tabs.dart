import 'package:flutter/material.dart';

class AppBarTabs extends StatelessWidget {
  final String label;
  const AppBarTabs({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Tab(
        child: Text(
          label,
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ),
    );
  }
}
