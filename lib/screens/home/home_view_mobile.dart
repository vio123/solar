import 'package:flutter/material.dart';
import 'package:solar/screens/general/general_view_mobile.dart';
import 'package:solar/screens/provider/provider_view_mobile.dart';

import '../../components/side_button.dart';
import '../curier/curier_view_mobile.dart';

class HomeViewMobile extends StatefulWidget {
  const HomeViewMobile({super.key});

  @override
  State<HomeViewMobile> createState() => _HomeViewMobileState();
}

class _HomeViewMobileState extends State<HomeViewMobile> {
  int selectedIndex = 0;
  String selectedProvider = "";
  String curierName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1918),
      appBar: AppBar(
        title: Text('Test'),
      ),
      drawer: Drawer(
        width: 100,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SideButton(
                backgroundColor: const Color(0xFF0051C2),
                borderColor: const Color(0xFF0663E5),
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  /*
                  setState(() {
                    selectedIndex = 2;
                  });

                   */
                },
                isBorder: true,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                imageAsset: 'dispecer.png',
                onPressed: () {},
                isBorder: false,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                borderColor: const Color(0xFF777777),
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                isBorder: true,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                imageAsset: 'tazz_gray.png',
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    selectedProvider = "Tazz";
                  });
                },
                isBorder: false,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                imageAsset: 'bolt_gray.png',
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    selectedProvider = "Bolt";
                  });
                },
                isBorder: false,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                imageAsset: 'glovo_gray.png',
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    selectedProvider = "Glovo";
                  });
                },
                isBorder: false,
              ),
              const SizedBox(
                height: 10,
              ),
              SideButton(
                backgroundColor: const Color(0xFF3C3938),
                imageAsset: 'uber_eats_gray.png',
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                    selectedProvider = "Uber";
                  });
                },
                isBorder: false,
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          selectedIndex == 0 ? const GeneralViewMobile() : const SizedBox(),
          selectedIndex == 1
              ? ProviderViewMobile(
                  title: selectedProvider,
                  curierOnPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  settingsOnPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  getCurierName: (String curierName) {
                    this.curierName = curierName;
                  },
                )
              : const SizedBox(),
          selectedIndex == 2
              ? CurierViewMobile(
                  curierName: curierName,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
