import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar/components/card_company.dart';

class GeneralViewDesktop extends StatefulWidget {
  const GeneralViewDesktop({super.key});

  @override
  State<GeneralViewDesktop> createState() => _GeneralViewDesktopState();
}

class _GeneralViewDesktopState extends State<GeneralViewDesktop> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint("general");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1918),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.3,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                ),
                children: [
                  const CardCompany(
                    logoImage: 'global.png',
                    title: 'General',
                    nrCurieri: '281',
                    totalIncasari: '482.781',
                    isGeneral: true,
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.3,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 20,
                ),
                children: const [
                  CardCompany(
                    logoImage: 'tazz.png',
                    title: 'Tazz',
                    nrCurieri: '281',
                    totalIncasari: '482.781',
                    isGeneral: false,
                  ),
                  CardCompany(
                    logoImage: 'bolt.png',
                    title: 'Bolt',
                    nrCurieri: '281',
                    totalIncasari: '482.781',
                    isGeneral: false,
                  ),
                  CardCompany(
                    logoImage: 'glovo.png',
                    title: 'Glovo',
                    nrCurieri: '281',
                    totalIncasari: '482.781',
                    isGeneral: false,
                  ),
                  CardCompany(
                    logoImage: 'uber.png',
                    title: 'Uber Eats',
                    nrCurieri: '281',
                    totalIncasari: '482.781',
                    isGeneral: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
