import 'package:denum_test_app/screens/code/code_screen.dart';
import 'package:denum_test_app/models/phone_num_model.dart';
import 'package:flutter/material.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_errmsg.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_decoration.dart';
import 'package:provider/provider.dart';

class PhoneNumScreen extends StatelessWidget {
  const PhoneNumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF918DE2),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: const Image(
                  width: 151,
                  height: 101,
                  image: AssetImage("assets/images/Logo1.png")),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
              margin: const EdgeInsets.only(top: 8),
              child: Form(
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.phone,
                  inputFormatters: [InputDecorationLogin().maskFormatter],
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  decoration: InputDecorationLogin.myInputDecoration(
                    label: "Введите номер телефона",
                  ),
                  onChanged: (value) {
                    context.read<PhoneNum>().phoneNumber = value;
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.only(top: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(65),
                    backgroundColor: const Color(0xFF1F145D)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 26, bottom: 26),
                  child: Text(
                    "Далее",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onPressed: () {
                  if (context.read<PhoneNum>().phoneNumber.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter right number')),
      );
                  } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CodeScreen(),
                    ),
                  );}
                },
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 45),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("Privacy Policy",
                    style:
                        TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5))),
                Text("Terms and Conditions",
                    style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5)))
              ]),
        ),
      ),
    );
  }
}
