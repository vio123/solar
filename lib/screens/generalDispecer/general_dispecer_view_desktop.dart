import 'package:flutter/material.dart';
import 'package:solar/components/card_dispecer.dart';
import 'package:solar/components/left_icon_btn.dart';

import '../../components/card_statistics.dart';

class GeneralDispecerViewDesktop extends StatefulWidget {
  const GeneralDispecerViewDesktop({super.key});

  @override
  State<GeneralDispecerViewDesktop> createState() =>
      _GeneralDispecerViewDesktopState();
}

class _GeneralDispecerViewDesktopState
    extends State<GeneralDispecerViewDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF312E2C),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dispeceri',
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  LeftIconBtn(
                    onPressed: () {},
                    text: 'Dispecer',
                    backgroundColor: Colors.blue,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  CardStatistics(
                    title: 'TOTAL DISPECERI',
                    value: '33',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CardStatistics(
                    title: 'TOTAL DISPECERI',
                    value: '33',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'CONSTANTA',
                style: TextStyle(fontSize: 18, color: Color(0xFFBCBCBC)),
              ),
              const SizedBox(
                height: 20,
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
                    CardDispecer(
                      name: 'Luca Marian',
                      dispecerOnPressed: () {},
                      historyOnPressed: () {},
                    ),
                    CardDispecer(
                      name: 'Luca Marian',
                      dispecerOnPressed: () {},
                      historyOnPressed: () {},
                    ),
                    CardDispecer(
                      name: 'Luca Marian',
                      dispecerOnPressed: () {},
                      historyOnPressed: () {},
                    ),
                    CardDispecer(
                      name: 'Luca Marian',
                      dispecerOnPressed: () {},
                      historyOnPressed: () {},
                    ),
                    CardDispecer(
                      name: 'Luca Marian',
                      dispecerOnPressed: () {},
                      historyOnPressed: () {},
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
