import 'package:flutter/material.dart';

class CardDispecer extends StatelessWidget {
  final String name;
  final VoidCallback dispecerOnPressed;
  final VoidCallback historyOnPressed;

  const CardDispecer({
    super.key,
    required this.name,
    required this.dispecerOnPressed,
    required this.historyOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        dispecerOnPressed.call();
      },
      child: Card(
        color: const Color(0xFF1C1A1A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Color(0xFF312E2C),
            width: 2.0, // Grosimea chenarului
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xFFBCBCBC),
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    historyOnPressed.call();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: null,
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(35, 35),
                  ),
                  child: Flexible(
                    child: Container(
                      width: 25,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFF35312F),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Icon(
                        Icons.calendar_month,
                        color: Color(0xFFBCBCBC),
                        size: 16,
                      ),
                    ),
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
