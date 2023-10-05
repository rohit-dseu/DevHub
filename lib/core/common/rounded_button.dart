import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final LinearGradient linearGradient;
  final IconData? icon;
  final Image? image;

  const RoundedButton({
    super.key,
    this.icon,
    this.image,
    required this.onPressed,
    required this.label,
    required this.linearGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: Container(
        height: 48.0,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: linearGradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
