import 'package:denum_test_app/screens/code/code_screen.dart';
import 'package:flutter/material.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_errmsg.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_decoration.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF918DE2),
        body: SingleChildScrollView(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 80),
                  child: const Image(
                      width: 151,
                      height: 101,
                      image: AssetImage("assets/images/Logo1.png")),
                ),
                Container(
                  //show error message here
                  margin: const EdgeInsets.only(top: 100),
                  // child: error ? ErrMsg(text: errormsg) : Container(),
                  //if error == true then show error message
                  //else set empty container as child
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  margin: const EdgeInsets.only(top: 8),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    inputFormatters: [InputDecorationLogin().maskFormatter],
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    // controller: _username, //set username controller
                    decoration: InputDecorationLogin.myInputDecoration(
                      label: "Введите номер телефона",
                    ),
                    onChanged: (value) {
                      //set username  text on change
                      // username = value;
                    },
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CodeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("Privacy Policy",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5))),
                        Text("Terms and Conditions",
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5)))
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
