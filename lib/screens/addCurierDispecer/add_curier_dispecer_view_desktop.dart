import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solar/components/custom_dropdown.dart';
import 'package:solar/components/document_btn.dart';
import 'package:solar/components/text_input.dart';

class AddCurierDispecerViewDesktop extends StatefulWidget {
  const AddCurierDispecerViewDesktop({super.key});

  @override
  State<AddCurierDispecerViewDesktop> createState() => _AddCurierDispecerViewDesktopState();
}

class _AddCurierDispecerViewDesktopState extends State<AddCurierDispecerViewDesktop> {
  final TextEditingController numeController = TextEditingController();
  final TextEditingController prenumeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController varstaController = TextEditingController();
  final TextEditingController ibanController = TextEditingController();
  final TextEditingController identificatorTazzController =
      TextEditingController();
  final TextEditingController identificatorBoltController =
      TextEditingController();
  final TextEditingController identificatorGlovoController =
      TextEditingController();
  final List<String> cities = [
    'Oras',
    'București',
    'Constanța',
    'Cluj-Napoca',
    'Timișoara'
  ];

  bool enabled = false;

  bool nume = false;
  bool prenume = false;
  bool email = false;
  bool varsta = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bool localEnabled = false;
    numeController.addListener(() {
      nume = numeController.value.text.isNotEmpty;
      localEnabled = nume && prenume;
      isEnabled(localEnabled);
    });
    prenumeController.addListener(() {
      prenume = prenumeController.value.text.isNotEmpty;
      localEnabled = nume && prenume;
      isEnabled(localEnabled);
    });
  }

  void isEnabled(bool localEnabled){
    if (enabled != localEnabled) {
      setState(() {
        enabled = localEnabled;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1918),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Adauga curier",
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DETALII',
                          style: TextStyle(
                            color: Color(0xFFBCBCBC),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: TextInput(
                                hintText: 'Nume',
                                controller: numeController,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: TextInput(
                                hintText: 'Prenume',
                                controller: prenumeController,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextInput(
                          hintText: 'E-Mail',
                          controller: emailController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: TextInput(
                                hintText: 'Varsta',
                                controller: varstaController,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: CustomDropDown(
                                listItems: cities,
                                onItemSelected: (String selectedCity) {
                                  // Implement your logic here to handle the selected city
                                  print('Selected city: $selectedCity');
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: CustomDropDown(
                                listItems: cities,
                                onItemSelected: (String selectedCity) {
                                  // Implement your logic here to handle the selected city
                                  print('Selected city: $selectedCity');
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: CustomDropDown(
                                listItems: cities,
                                onItemSelected: (String selectedCity) {
                                  // Implement your logic here to handle the selected city
                                  print('Selected city: $selectedCity');
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: CustomDropDown(
                                listItems: cities,
                                onItemSelected: (String selectedCity) {
                                  // Implement your logic here to handle the selected city
                                  print('Selected city: $selectedCity');
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Flexible(
                              child: CustomDropDown(
                                listItems: cities,
                                onItemSelected: (String selectedCity) {
                                  // Implement your logic here to handle the selected city
                                  print('Selected city: $selectedCity');
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextInput(
                          hintText: 'IBAN',
                          controller: ibanController,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'PLATFORMA  ',
                          style: TextStyle(
                            color: Color(0xFFBCBCBC),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                        "lib/assets/images/tazz.png"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: TextInput(
                                      hintText: 'Identificator',
                                      controller: identificatorTazzController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                        "lib/assets/images/bolt.png"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: TextInput(
                                      hintText: 'Identificator',
                                      controller: identificatorBoltController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                    height: 35,
                                    child: Image.asset(
                                        "lib/assets/images/glovo.png"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: TextInput(
                                      hintText: 'Identificator',
                                      controller: identificatorGlovoController,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'DOCUMENTE  ',
                          style: TextStyle(
                            color: Color(0xFFBCBCBC),
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: DocumentBtn(
                                name: 'Buletin',
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: DocumentBtn(
                                name: 'Contract',
                                onPressed: () {},
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: DocumentBtn(
                                name: 'Medicina munc.',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    // Culoarea textului (poate fi ajustata)
                                    fontSize: 14,
                                  ),
                                  backgroundColor: enabled
                                      ? Colors.blue
                                      : const Color(0xFF1B1918),
                                  foregroundColor: Colors.white,
                                  // Culoarea textului (poate fi ajustata)
                                  elevation: 0,
                                ),
                                child: const Text('Adauga curier'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
