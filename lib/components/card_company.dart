import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCompany extends StatelessWidget {
  final String logoImage;
  final String title;
  final String nrCurieri;
  final String totalIncasari;
  final bool isGeneral;

  const CardCompany({
    super.key,
    required this.logoImage,
    required this.title,
    required this.nrCurieri,
    required this.totalIncasari,
    required this.isGeneral,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1C1A1A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: isGeneral ? const Color(0xFF00C0A4) : const Color(0xFF312E2C),
          width: 2.0, // Grosimea chenarului
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: 370,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset('lib/assets/images/$logoImage'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  isGeneral
                      ? Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: const Color(0xFF35312F),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.calendar_month,
                            color: Color(0xFFBCBCBC),
                          ),
                        )
                      : Row(
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                color: const Color(0xFF35312F),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.calendar_month,
                                color: Color(0xFFBCBCBC),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'lib/assets/images/report.png',
                              width: 35,
                              height: 35,
                            ),
                          ],
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'TOTAL CURIERI',
                        style: TextStyle(
                          color: Color(0xFFD3D3D3),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        nrCurieri,
                        style: const TextStyle(
                          color: Color(0xFF00C0A4),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'TOTAL INCASARI',
                        style: TextStyle(
                          color: Color(0xFFD3D3D3),
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '$totalIncasari RON',
                        style: const TextStyle(
                          color: Color(0xFF00C0A4),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
