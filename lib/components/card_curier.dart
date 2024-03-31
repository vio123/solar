import 'package:flutter/material.dart';

class CardCurier extends StatelessWidget {
  final String name;
  final VoidCallback curierOnPressed;
  final VoidCallback settingsOnPressed;

  const CardCurier({
    super.key,
    required this.name,
    required this.curierOnPressed,
    required this.settingsOnPressed,
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
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 40,
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
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      curierOnPressed.call();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: null,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(35, 35),
                    ),
                    child: Image.asset(
                      'lib/assets/images/report_curier.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                       settingsOnPressed.call();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: null,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(35, 35),
                    ),
                    child: Image.asset(
                      'lib/assets/images/settings.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
