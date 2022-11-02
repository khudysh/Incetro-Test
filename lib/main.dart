import 'package:denum_test_app/models/phone_num_model.dart';
import 'package:denum_test_app/screens/phone_num/phone_num_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PhoneNum>(
      create: (context) => PhoneNum(),
      child: MaterialApp(
        title: 'Denum Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const PhoneNumScreen(),
      ),
    );
  }
}
