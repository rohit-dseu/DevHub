import 'package:flutter/material.dart';

import '../../theme/pallate.dart';

class ReusableDropdown<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final Widget Function(T) itemBuilder;
  final String? hint;
  final String? labelText;

  const ReusableDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.itemBuilder,
    this.hint,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null)
          Text(
            labelText!,
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromARGB(255, 144, 144, 144),
            ),
          ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: const Color.fromARGB(255, 146, 146, 146),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: value,
              onChanged: onChanged,
              isExpanded: true,
              style: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(
                  221,
                  191,
                  191,
                  191,
                ),
              ),
              items: items.map<DropdownMenuItem<T>>((T value) {
                return DropdownMenuItem<T>(
                  value: value,
              
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: itemBuilder(value),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
