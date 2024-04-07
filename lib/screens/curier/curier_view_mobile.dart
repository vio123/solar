import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/card_statistics.dart';

class CurierViewMobile extends StatefulWidget {
  final String curierName;

  const CurierViewMobile({
    super.key,
    required this.curierName,
  });

  @override
  State<CurierViewMobile> createState() => _CurierViewMobileState();
}

class _CurierViewMobileState extends State<CurierViewMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF312E2C),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Card(
                    color: const Color(0xFF1C1A1A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Color(0xFF312E2C),
                        width: 2.0, // Grosimea chenarului
                      ),
                    ),
                    child: const SizedBox(
                      width: 90,
                      height: 90,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 90,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              widget.curierName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI SAPTAMANA',
                      value: '112.781 RON',
                    ),
                  ),
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI LUNA',
                      value: '1.781',
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI AN',
                      value: '112.781 RON',
                    ),
                  ),
                  Expanded(
                    child: CardStatistics(
                      title: 'TAXE / DE PLATIT',
                      value: '_ RON',
                    ),
                  ),
                ],
              ),
              Card(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Image.asset(
                              "lib/assets/images/tazz.png",
                              width: 35,
                              height: 35,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Image.asset(
                              "lib/assets/images/bolt.png",
                              width: 35,
                              height: 35,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Image.asset(
                              "lib/assets/images/glovo.png",
                              width: 35,
                              height: 35,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Nume',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Calin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Prenume',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Marius Daniel',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'E-Mail',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'calin.daniel@gmail.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Varsta',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              '33',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Oras',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Constanta',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Limba',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Romana',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Statut',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Student',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Vehicul',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Autoturism',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'IBAN',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'RO2131874042184712131122RO2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: const Text(
                                'Tip Contract',
                                style: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Flexible(
                            child: Text(
                              'Part-time',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              'Buletin',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Image.asset(
                            "lib/assets/images/upload_logo.png",
                            width: 18,
                            height: 18,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              'Contract',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Image.asset(
                            "lib/assets/images/upload_logo.png",
                            width: 18,
                            height: 18,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFBCBCBC),
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(
                            child: Text(
                              'Medicina munc.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Image.asset(
                            "lib/assets/images/upload_logo.png",
                            width: 18,
                            height: 18,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
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
