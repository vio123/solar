import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardStatistics extends StatelessWidget {
  final String title;
  final String value;

  const CardStatistics({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1C1A1A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Color(0xFF312E2C),
          width: 2.0, // Grosimea chenarului
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.15,
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: FittedBox(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: FittedBox(
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Color(0xFFDADADA),
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
