import 'package:flutter/material.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01122A),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(image: AssetImage("assets/images/suucess.png"),width: 255,height: 202,),
        const SizedBox(height: 40,),
        const Text("Password has been reset\n Successfully",textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
        const SizedBox(height: 50),
        Container(
          margin: EdgeInsets.all(12),
          alignment: Alignment.center,
          width: 343,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF023A87),

          ),
          child: const Text("Back to Login",textAlign: TextAlign.center,style: TextStyle(fontSize:18,fontWeight: FontWeight.w700,color: Colors.white)),
        ),
        const SizedBox(height: 30,)
      ],
    ),
    );
  }
}
