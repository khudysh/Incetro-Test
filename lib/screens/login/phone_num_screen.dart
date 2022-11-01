import 'package:flutter/material.dart';

class PhoneNumScreen extends StatelessWidget {
  const PhoneNumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF918DE2),
        body: SingleChildScrollView(
            child: Column(
          children: const [
            Center(
                child: Image(
                    width: 151,
                    height: 101,
                    image: AssetImage("assets/images/Logo1.png"))),
          ],
        )),
      ),
    );
  }
}
