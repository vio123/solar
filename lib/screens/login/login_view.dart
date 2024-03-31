import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solar/util/responsive.dart';

import '../../components/text_input.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool enabled = false;
  bool email = false;
  bool pass = false;

  @override
  void initState() {
    super.initState();
    bool localEnabled = false;
    emailController.addListener(() {
      email = emailController.value.text.isNotEmpty;
      localEnabled = email && pass;
      isEnabled(localEnabled);
    });
    passController.addListener(() {
      pass = passController.value.text.isNotEmpty;
      localEnabled = email && pass;
      isEnabled(localEnabled);
    });
  }

  void isEnabled(bool localEnabled) {
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
      body: Center(
        child: Card(
          color: const Color(0xFF1C1A1A),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color(0xFF312E2C),
              width: 2.0, // Grosimea chenarului
            ),
          ),
          child: SizedBox(
            width: Responsive.isDesktop(context) ? MediaQuery.of(context).size.width * 0.4 : MediaQuery.of(context).size.width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Log In',
                    style: TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: TextInput(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: TextInput(
                      hintText: 'Password',
                      controller: passController,
                      isPassword: true,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (enabled) {
                        context.go('/home');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        // Culoarea textului (poate fi ajustata)
                        fontSize: 14,
                      ),
                      backgroundColor:
                          enabled ? Colors.blue : const Color(0xFF1B1918),
                      foregroundColor: Colors.white,
                      // Culoarea textului (poate fi ajustata)
                      elevation: 0,
                    ),
                    child: const Text('LogIn'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
