import 'package:flutter/material.dart';

class OtpFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode currentFocus;
  final FocusNode? nextFocus;
  final Function({required String value, required FocusNode focusNode}) nextField;
  final bool autofocus;

  const OtpFieldWidget({
    Key? key,
    required this.controller,
    required this.currentFocus,
    required this.nextFocus,
    required this.nextField,
    this.autofocus = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment:Alignment.topCenter,
        margin: const EdgeInsets.only(left: 10,right: 10),
        decoration: const BoxDecoration(
          borderRadius:BorderRadius.all(Radius.circular(10)) ,
          color: Colors.white,
        ),
        width: 58,
        height: 54,
        child: TextFormField(
          focusNode: currentFocus,
          autofocus: autofocus,
          maxLines: 1,
          controller:controller ,
          keyboardType: TextInputType.number,
          cursorColor: Colors.grey,
          onChanged: (value) {
            if (value.isNotEmpty) {
              if (nextFocus != null) {
                nextFocus?.requestFocus();
              }
            }
          },
          decoration:  InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFFA4A4A4), width: 2),
            ),
            border: InputBorder.none,
          ),
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.top,
        ));
  }
}
