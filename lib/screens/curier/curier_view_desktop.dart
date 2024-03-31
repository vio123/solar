import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar/components/card_statistics.dart';
import 'package:solar/components/left_icon_btn.dart';

class CurierViewDesktop extends StatefulWidget {
  final String curierName;

  const CurierViewDesktop({
    super.key,
    required this.curierName,
  });

  @override
  State<CurierViewDesktop> createState() => _CurierViewDesktopState();
}

class _CurierViewDesktopState extends State<CurierViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1918),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Text(
                              widget.curierName,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 38,
                              ),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LeftIconBtn(
                              onPressed: () {},
                              text: 'Incarca fisier',
                              imageAsset: 'incarca_fisier.png',
                              backgroundColor: Colors.blue,
                            ),
                            const SizedBox(),
                          ],
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
                            ElevatedButton(
                              onPressed: () {
                                // Add your button press action here
                                debugPrint('History button pressed!');
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(color: Colors.white),
                                // Text color
                                backgroundColor: const Color(0xFF35312F),
                                // Background color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      5.0), // Border radius
                                ),
                                padding:
                                    EdgeInsets.zero, // Remove default padding
                              ),
                              child: const SizedBox(
                                width: 80.0,
                                height: 35.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 5.0),
                                    // Add some left margin
                                    Text(
                                      'Istoric',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.calendar_month,
                                      color: Color(0xFFBCBCBC),
                                    ),
                                    SizedBox(width: 5.0),
                                    // Add some right margin
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(),
                          ],
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
                            LeftIconBtn(
                              onPressed: () {},
                              text: 'Sterge',
                              icon: const Icon(
                                Icons.delete,
                                color: Color(0xFFBCBCBC),
                              ),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
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
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      CardStatistics(
                        title: 'TOTAL CURSE',
                        value: '421',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardStatistics(
                        title: 'INCASARI SAPTAMANA',
                        value: '112.781 RON',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardStatistics(
                        title: 'INCASARI LUNA',
                        value: '442.663 RON',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CardStatistics(
                        title: 'INCASARI AN',
                        value: '2.612.521 RON',
                      ),
                    ],
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
