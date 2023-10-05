import 'package:flutter/material.dart';

import '../../theme/pallate.dart';

class FormFieldHintToolTip extends StatelessWidget {
  final TextEditingController? controller;
  final String tipText;
  final String hintText;
  final String? suffixText;
  final int maxLines;
  final int maxLength;
  final bool isDisabled;
  final Function(String?)? onChanged;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const FormFieldHintToolTip({
    super.key,
    required this.tipText,
    required this.hintText,
    required this.validator,
    this.controller,
    required this.maxLines,
    this.isDisabled = false,
    this.keyboardType = TextInputType.name,
    this.suffixText,
    this.maxLength = 100,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tipText,
          style: TextStyle(
            color: AppColors.lightWhite,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          onChanged: onChanged,
          maxLength: maxLength,
          keyboardType: keyboardType,
          enabled: !isDisabled,
          readOnly: isDisabled,
          maxLines: maxLines,
          controller: controller,
          style: const TextStyle(color: Colors.black87, fontSize: 16),
          decoration: InputDecoration(
            suffixText: suffixText,
            suffixStyle: TextStyle(
              fontSize: 14,
              color: AppColors.mDisabledColor,
            ),
            hintStyle: TextStyle(
              color: Color.fromARGB(136, 185, 185, 185),
              fontSize: 14,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: Color.fromARGB(255, 141, 141, 141),
              ),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: AppColors.mDisabledColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 1.5,
                color: AppColors.lightBlack,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                width: 1,
                color: AppColors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                width: 1.5,
                color: Color.fromARGB(222, 230, 6, 6),
              ),
            ),
            hintText: hintText,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
