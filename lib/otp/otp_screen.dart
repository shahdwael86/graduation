import 'package:flutter/material.dart';
import 'package:gradution/otp/otp_field_widget.dart';
import 'package:gradution/otp/otp_timer.dart';

class OtpScreen extends StatelessWidget {

   OtpScreen({super.key});
  TextEditingController N1 = TextEditingController();
  TextEditingController N2 = TextEditingController();
  TextEditingController N3 = TextEditingController();
  TextEditingController N4 = TextEditingController();


  final FocusNode F1 = FocusNode();
  final FocusNode F2 = FocusNode();
  final FocusNode F3 = FocusNode();
  final FocusNode F4 = FocusNode();

   void nextField({
     required String value,
     required FocusNode focusNode,
   }) {
     if (value.isNotEmpty) {
       focusNode.requestFocus();
     }
   }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF1F3551),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 55),
            const Center(
              child: Image(
                image: AssetImage("assets/images/chracters.png"),
                width: 168,
                height: 177,
              ),
            ),
            const SizedBox(height: 55),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 55 - 177 - 55,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xFF01122A),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    """We have sent a verification
code to the email
“A******@gmail.com”""",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFA4A4A4),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OtpFieldWidget(controller: N1, currentFocus: F1, nextFocus: F2, nextField: nextField, autofocus: true),
                      OtpFieldWidget(controller: N2, currentFocus: F2, nextFocus: F3, nextField: nextField),
                      OtpFieldWidget(controller: N3, currentFocus: F3, nextFocus: F4, nextField: nextField),
                      OtpFieldWidget(controller: N4, currentFocus: F4, nextFocus: null, nextField: nextField),
                    ],
                  ),
                  const SizedBox(height: 15),
                  TimerScreen(),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/images/!.png"),
                        width: 30,
                        height: 30,
                      ),
                      Expanded(
                        child: Text(
                          """This is a temporary code, do not share it with anyone. Sharing the OTP with others can lead to significant security risks. The OTP is intended to be a private code.""",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFA4A4A4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Container(
                    alignment: Alignment.center,
                    width: 343,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF023A87),
                    ),
                    child: const Text(
                      "Reset Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    alignment: Alignment.center,
                    width: 343,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF808080),
                    ),
                    child: const Text(
                      "Resend OTP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
