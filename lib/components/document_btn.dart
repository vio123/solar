import 'package:flutter/material.dart';

class DocumentBtn extends StatelessWidget {
  final String name;
  final VoidCallback onPressed;

  const DocumentBtn({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed.call();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1C1A1A),
        // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(
            color: Color(0xFF312E2C),
            width: 2.0, // Border width
          ),
        ),
        minimumSize: const Size(230.0, 42.0),
        // Set button size
        padding: EdgeInsets.zero,
        // Remove padding
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "lib/assets/images/report.png",
            width: 16,
            height: 16,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
