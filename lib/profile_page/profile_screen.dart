import 'package:flutter/material.dart';
import 'package:gradution/profile_page/profile_ribon.dart';

import '../edit_profile/edit_profile_screen.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF01122A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none, // للسماح بخروج العناصر خارج حدود Stack
              children: [
                Container(
                  height: 195,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2C4874),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 40),
                      Icon(Icons.arrow_back_outlined, color: Colors.white, size: 22),
                      SizedBox(width: 110),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130, // لضبط مكان الـ CircularAvatar
                  left: MediaQuery.of(context).size.width / 2 - 75, // لجعل الصورة في المنتصف
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/images/logo.png'), // استبدل بالمسار الخاص بك
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 55,
                        top: 115,
                        child: GestureDetector(
                          onTap: () {

                          },
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
              ],
            ),
            const SizedBox(height: 110), // إضافة فراغ كافي بعد الـ Avatar
            const Text(
              "Mario Ebrahim",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF1A2A3F)),
              child: const Text(
                "Mario.Ebrahim@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 35),
            ProfileRibon(
              leadingIcon: "assets/images/editable.png",
              title: "Edit Profile",
              onTap: () {
                Navigator.pushReplacementNamed(context, EditProfileScreen.routeName);
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const ImageIcon(AssetImage("assets/images/lang_icon.png"), color: Colors.white),
                  const SizedBox(width: 10),
                  const Text(
                    "Language",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  const Text(
                    "العربية",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 7),
                  InkWell(
                      onTap: (){},
                      child: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.white, size: 22)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const ImageIcon(AssetImage("assets/images/mode.png"), color: Colors.white),
                  const SizedBox(width: 10),
                  const Text(
                    "Dark Mode",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xFF023A87),
                  ),
                ],
              ),
            ),
            ProfileRibon(
              leadingIcon: "assets/images/about_icon.png",
              title: "About",
              onTap: () {},
            ),
            ProfileRibon(
              leadingIcon: "assets/images/logout.png",
              title: "Logout",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}