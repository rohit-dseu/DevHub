import 'package:devhub/theme/pallate.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  final VoidCallback onTap;
  const SearchTab({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(173, 83, 83, 83),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Search',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
