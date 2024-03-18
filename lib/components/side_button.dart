import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final Icon? icon;
  final String imageAsset;
  final bool isBorder;
  final VoidCallback onPressed;

  const SideButton({
    super.key,
    required this.backgroundColor,
    this.borderColor = Colors.white,
    required this.onPressed,
    this.icon,
    this.imageAsset = "",
    required this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0), // Same as container
        ),
        backgroundColor: backgroundColor,
        // Background color from container
        foregroundColor: Colors.white,
        // Text/icon color based on background
        padding: EdgeInsets.zero,
        // Remove default padding
        minimumSize: const Size(55, 55),
        // Set size
        side: isBorder
            ? BorderSide(
                // Border from container
                color: borderColor,
                width: 2.0,
              )
            : null,
      ),
      onPressed: () {
        // Handle button press event here
        onPressed.call();
      },
      child: imageAsset.isNotEmpty
          ? Flexible(
            child: SizedBox(
                width: 25,
                height: 25,
                child: Image.asset('lib/assets/images/$imageAsset'),
              ),
          )
          : icon,
    );
  }
}
