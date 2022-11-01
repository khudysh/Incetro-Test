import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputDecorationLogin {
  var maskFormatter = MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  static InputDecoration myInputDecoration({String? label}) {
    return InputDecoration(
      hintText: label,
      hintStyle: const TextStyle(
          color: Color.fromARGB(127, 255, 255, 255), fontSize: 14),

      contentPadding: const EdgeInsets.fromLTRB(16, 26, 30, 29),

      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: const BorderSide(color: Color(0xFF827EDC), width: 1)),

      focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Color(0xFF6E69CC), width: 1)), //focus border

      fillColor: const Color(0xFF827EDC),
      filled: true,
    );
  }
}
