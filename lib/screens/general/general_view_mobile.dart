import 'package:flutter/material.dart';

import '../../components/card_company.dart';

class GeneralViewMobile extends StatefulWidget {
  const GeneralViewMobile({super.key});

  @override
  State<GeneralViewMobile> createState() => _GeneralViewMobileState();
}

class _GeneralViewMobileState extends State<GeneralViewMobile> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1918),
      body: SingleChildScrollView(
        child: Column(
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
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CardCompany(
                logoImage: 'global.png',
                title: 'General',
                nrCurieri: '281',
                totalIncasari: '482.781',
                isGeneral: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CardCompany(
                logoImage: 'tazz.png',
                title: 'Tazz',
                nrCurieri: '281',
                totalIncasari: '482.781',
                isGeneral: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CardCompany(
                logoImage: 'bolt.png',
                title: 'Bolt',
                nrCurieri: '281',
                totalIncasari: '482.781',
                isGeneral: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CardCompany(
                logoImage: 'glovo.png',
                title: 'Glovo',
                nrCurieri: '281',
                totalIncasari: '482.781',
                isGeneral: false,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: CardCompany(
                logoImage: 'uber.png',
                title: 'Uber Eats',
                nrCurieri: '281',
                totalIncasari: '482.781',
                isGeneral: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
