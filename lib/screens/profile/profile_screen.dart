import 'package:denum_test_app/screens/code/code_decoration.dart';
import 'package:denum_test_app/screens/profile/profile_screen.dart';
import 'package:denum_test_app/screens/profile/profile_tile.dart';
import 'package:flutter/material.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_errmsg.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_decoration.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../models/phone_num_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF918DE2),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 15.0,
                    color: Colors.white,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text("Профиль",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))),
                IconButton(
                  onPressed: () => {Navigator.pop(context)},
                  icon: const Icon(
                    Icons.logout_rounded,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(24, 40, 24, 0),
                child: const Text("Достоевский Фёдор Михайлович",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold))),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 41, 10, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ProfileTile(
                        icon: Icons.phone_outlined,
                        string: context.watch<PhoneNum>().phoneNumber),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ProfileTile(
                        icon: Icons.mail_outline_rounded,
                        string: "fedordostoevskiy@gmail.com"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ProfileTile(
                        icon: Icons.credit_card_rounded,
                        string: "**** **** **** 6972"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ProfileTile(
                        icon: Icons.insert_drive_file_outlined,
                        string: "Мои документы"),
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Версия 1.0",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.5))),
            ],
          ),
        )),
    );
  }
}
