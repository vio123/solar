import 'package:flutter/material.dart';
import 'package:solar/components/side_button.dart';
import 'package:solar/screens/addCurierDispecer/add_curier_dispecer_view_desktop.dart';
import 'package:solar/screens/curier/curier_view.dart';
import 'package:solar/screens/general/general_view_desktop.dart';
import 'package:solar/screens/generalDispecer/general_dispecer_view_desktop.dart';
import 'package:solar/screens/provider/provider_view_desktop.dart';

class HomeViewDesktop extends StatefulWidget {
  const HomeViewDesktop({super.key});

  @override
  State<HomeViewDesktop> createState() => _HomeViewDesktopState();
}

class _HomeViewDesktopState extends State<HomeViewDesktop>
    with AutomaticKeepAliveClientMixin {
  TextEditingController searchController = TextEditingController();
  int selectedIndex = 0;
  String selectedProvider = "";
  String curierName = "";

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: 40,
          color: const Color(0xFF1B1918),
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
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SideButton(
                  backgroundColor: const Color(0xFF0051C2),
                  borderColor: const Color(0xFF0663E5),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  isBorder: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                SideButton(
                  backgroundColor: const Color(0xFF3C3938),
                  imageAsset: 'dispecer.png',
                  onPressed: () {
                    setState(() {
                      selectedIndex = 4;
                    });
                  },
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
                      selectedProvider = "Uber Eats";
                    });
                  },
                  isBorder: false,
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                selectedIndex == 0
                    ? const GeneralViewDesktop()
                    : const SizedBox(),
                selectedIndex == 1
                    ? ProviderViewDesktop(
                        title: selectedProvider,
                        curierOnPressed: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                        settingsOnPressed: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                        getCurierName: (String curierName) {
                          this.curierName = curierName;
                        },
                      )
                    : const SizedBox(),
                selectedIndex == 2
                    ? const AddCurierDispecerViewDesktop()
                    : const SizedBox(),
                selectedIndex == 3
                    ? CurierView(
                        curierName: curierName,
                      )
                    : const SizedBox(),
                selectedIndex == 4
                    ? const GeneralDispecerViewDesktop()
                    : const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
