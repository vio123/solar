import 'package:flutter/material.dart';

class LeftIconBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Icon icon;
  final Color backgroundColor;
  final String imageAsset;

  const LeftIconBtn({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon = const Icon(Icons.delete),
    this.backgroundColor = const Color(0xFF35312F),
    this.imageAsset = '',
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed.call();
      },
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(color: Colors.white),
        // Text color
        backgroundColor: backgroundColor,
        // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0), // Border radius
        ),
        padding: EdgeInsets.zero, // Remove default padding
      ),
      child: SizedBox(
        height: 35.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 5.0),
            imageAsset.isNotEmpty
                ? Image.asset(
                    'lib/assets/images/$imageAsset',
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  )
                : icon,
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(width: 5.0),
            // Add some right margin
          ],
        ),
      ),
    );
  }
}
