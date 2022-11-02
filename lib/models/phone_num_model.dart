import 'package:flutter/material.dart';

class PhoneNum with ChangeNotifier {
  late String _phoneNumber;

  String get phoneNumber => _phoneNumber;

  set phoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }
}