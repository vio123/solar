import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:solar/components/card_curier.dart';
import 'package:solar/components/card_statistics.dart';

class ProviderViewDesktop extends StatefulWidget {
  final String title;
  final VoidCallback curierOnPressed;
  final VoidCallback settingsOnPressed;
  final Function(String) getCurierName;

  const ProviderViewDesktop({
    super.key,
    required this.title,
    required this.curierOnPressed,
    required this.settingsOnPressed,
    required this.getCurierName,
  });

  @override
  State<ProviderViewDesktop> createState() => _ProviderViewDesktopState();
}

class _ProviderViewDesktopState extends State<ProviderViewDesktop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF312E2C),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
                        borderRadius:
                            BorderRadius.circular(5.0), // Border radius
                      ),
                      padding: EdgeInsets.zero, // Remove default padding
                    ),
                    child: const SizedBox(
                      width: 80.0,
                      height: 35.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 5.0), // Add some left margin
                          Text(
                            'Istoric',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: Color(0xFFBCBCBC),
                          ),
                          SizedBox(width: 5.0), // Add some right margin
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 400,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: const [
                        CardStatistics(
                          title: 'TOTAL CURIERI',
                          value: '421',
                        ),
                        CardStatistics(
                          title: 'INCASARI LUNA',
                          value: '442.663 RON',
                        ),
                        CardStatistics(
                          title: 'INCASARI SAPTAMANA',
                          value: '112.663 RON',
                        ),
                        CardStatistics(
                          title: 'INCASARI AN',
                          value: '2.442.663 RON',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.419,
                    height: 300,
                    child: GridView(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 2.3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      children: [
                        DottedBorder(
                          color: const Color(0xFF383633),
                          // Dotted border color
                          strokeWidth: 2.0,
                          radius: const Radius.circular(10),
                          borderType: BorderType.RRect,
                          dashPattern: const [8.0, 10.0],
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'lib/assets/images/upload.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Incarca raport',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF949494),
                                  ),
                                ),
                                const Text(
                                  'sau drag & drop',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF949494),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 5,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: [
                    CardCurier(
                      name: 'Calin Marius Daniel',
                      curierOnPressed: () {
                        widget.getCurierName("Calin Marius Daniel");
                        widget.curierOnPressed.call();
                      },
                      settingsOnPressed: () {
                        widget.settingsOnPressed.call();
                      },
                    ),
                    CardCurier(
                      name: 'Calin Marius Daniel',
                      curierOnPressed: () {
                        widget.getCurierName("Calin Marius Daniel");
                        widget.curierOnPressed.call();
                      },
                      settingsOnPressed: () {
                        widget.settingsOnPressed.call();
                      },
                    ),
                    CardCurier(
                      name: 'Calin Marius Daniel',
                      curierOnPressed: () {
                        widget.getCurierName("Calin Marius Daniel");
                        widget.curierOnPressed.call();
                      },
                      settingsOnPressed: () {
                        widget.settingsOnPressed.call();
                      },
                    ),
                    CardCurier(
                      name: 'Calin Marius Daniel',
                      curierOnPressed: () {
                        widget.getCurierName("Calin Marius Daniel");
                        widget.curierOnPressed.call();
                      },
                      settingsOnPressed: () {
                        widget.settingsOnPressed.call();
                      },
                    ),
                    CardCurier(
                      name: 'Calin Marius Daniel',
                      curierOnPressed: () {
                        widget.getCurierName("Calin Marius Daniel");
                        widget.curierOnPressed.call();
                      },
                      settingsOnPressed: () {
                        widget.settingsOnPressed.call();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
