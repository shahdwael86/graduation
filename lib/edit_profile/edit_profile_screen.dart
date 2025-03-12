import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'edit_text_field.dart';


class EditProfileScreen extends StatefulWidget {
  static const String routeName = "EditProfileScreen";
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01122A),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_outlined,
            color: Colors.white, size: 22),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 35),
            Center(
              child: Positioned(
                right: 120,
                top: 130, // لضبط مكان الـ CircularAvatar
                left: 180, // لجعل الصورة في المنتصف
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.transparent,
                      child: CircleAvatar(
                        radius: 77,
                        backgroundImage: AssetImage(
                            'assets/images/logo.png'), // استبدل بالمسار الخاص بك
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 60,
                      top: 115,
                      child: GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xFF2C4874),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const EditTextField(
                label: "Full Name", icon: "assets/images/username_icon.png"),
            const EditTextField(
                label: "Phone Number", icon: "assets/images/phone_icon.png"),
            const EditTextField(
                label: "Email", icon: "assets/images/email_icon.png"),
            const EditTextField(
                label: "Password", icon: "assets/images/password_icon.png"),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFF01122A),
                  border: Border.all(
                    color: Colors.grey,
                    width: 3,
                  )),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/car_settings_icon.png",
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Car Settings",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  InkWell(
                      onTap: () {
                        carSettingsModalBottomSheet(context);
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.white,
                        size: 30,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Color(0xFF023A87), // تغيير اللون هنا
                  ),
                  child: Text(
                    "Update Changes",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void carSettingsModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 350,
          padding: const EdgeInsets.all(20),
          color: const Color(0xFF01122A),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF01122A),
                      border: Border.all(
                        color: Colors.grey,
                        width: 3,
                      )),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/car_number.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Car Number",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF01122A),
                      border: Border.all(
                        color: Colors.grey,
                        width: 3,
                      )),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/car_color.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Car Color",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF01122A),
                      border: Border.all(
                        color: Colors.grey,
                        width: 3,
                      )),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/password_icon.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Car Kind",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
