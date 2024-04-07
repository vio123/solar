import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../components/card_curier.dart';
import '../../components/card_statistics.dart';
import '../../components/left_icon_btn.dart';

class ProviderViewMobile extends StatefulWidget {
  final String title;
  final VoidCallback curierOnPressed;
  final VoidCallback settingsOnPressed;
  final Function(String) getCurierName;

  const ProviderViewMobile({
    super.key,
    required this.title,
    required this.curierOnPressed,
    required this.settingsOnPressed,
    required this.getCurierName,
  });

  @override
  State<ProviderViewMobile> createState() => _ProviderViewMobileState();
}

class _ProviderViewMobileState extends State<ProviderViewMobile> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF312E2C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 50,
                child: TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  controller: searchController,
                  decoration: const InputDecoration(
                    hintText: 'Cauta curier / raport / extras',
                    hintStyle: TextStyle(
                      color: Color(0xFF949494),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF949494),
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftIconBtn(
                    onPressed: () {},
                    text: 'Incarca fisier',
                    imageAsset: 'incarca_fisier.png',
                    backgroundColor: Colors.blue,
                  ),
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
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFFBCBCBC),
                          ),
                          Text(
                            'Istoric',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 5.0),
                          // Add some right margin
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CardStatistics(
                      title: 'TOTAL CURIERI',
                      value: '421',
                    ),
                  ),
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI SAPTAMANA',
                      value: '112.781 RON',
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI LUNA',
                      value: '442.663 RON',
                    ),
                  ),
                  Expanded(
                    child: CardStatistics(
                      title: 'INCASARI AN',
                      value: '2.612.521 RON',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardCurier(
                name: 'Calin Marius Daniel',
                curierOnPressed: () {
                  widget.getCurierName("Calin Marius Daniel");
                  widget.curierOnPressed.call();
                },
                settingsOnPressed: () {
                  widget.settingsOnPressed.call();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
