import 'package:denum_test_app/screens/code/code_decoration.dart';
import 'package:denum_test_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_errmsg.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_decoration.dart';
import 'package:pinput/pinput.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF918DE2),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 15.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 80),
                child: const Text("Введите код из СМС",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold))),
            Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Text("Код выслан на номер +7 (963) 074-41-18",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ))),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 95, 10, 0),
                margin: const EdgeInsets.only(top: 8),
                child: Pinput(
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: focusedPinTheme,
                  validator: (s) {
                    return s == '1234' ? null : 'Pin is incorrect';
                  },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  onCompleted: (pin) => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      )
                    },
                )),
            Padding(
              padding: const EdgeInsets.only(top: 72),
              child: Container(
                  child: const
                    Text("Выслать код повторно через 00:59",
                        style: TextStyle(
                          fontSize: 16,
                            color: Color.fromRGBO(255, 255, 255, 0.5))),
                  ),
            )
          ]),
        ),
      ),
    );
  }
}
