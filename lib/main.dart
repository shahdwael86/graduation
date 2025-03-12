import 'package:flutter/material.dart';
import 'package:gradution/edit_profile/edit_profile_screen.dart';
import 'package:gradution/onboarding/on_boarding.dart';
import 'package:gradution/otp/otp_screen.dart';
import 'package:gradution/profile_page/profile_ribon.dart';
import 'package:gradution/profile_page/profile_screen.dart';
import 'package:gradution/success_reset_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:  EditProfileScreen(),
    );
  }
}

