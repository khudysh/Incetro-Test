import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';

final defaultPinTheme = PinTheme(
  width: 57,
  height: 72,
  textStyle:
      TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    color: Color(0xFF827EDC),
    border: Border.all(color: Color(0xFF827EDC)),
    borderRadius: BorderRadius.zero,
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromARGB(255, 117, 114, 190)),
);
