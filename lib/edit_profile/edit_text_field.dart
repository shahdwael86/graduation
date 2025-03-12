import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final String label;
  final String icon;

  const EditTextField({
    super.key,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.white70, // لون النص العلوي (label)
            fontSize: 14,
            fontWeight: FontWeight.w600
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              icon,
              color: Colors.white,
            ),
          ),
          filled: true,
          fillColor: const Color(0xFF01122A), // لون الخلفية للحقل
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Colors.white24,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.white,
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
