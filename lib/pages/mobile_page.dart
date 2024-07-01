import 'package:devotee_matrimony/constants/button_constant.dart';
import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:flutter/material.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({super.key});

  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Login Account',
          style: FontConstant.styleMedium(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: screenWidth * 0.4,
              right: screenWidth * 0.4,
              child: Image.asset('assets/images/lock.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Enter Mobile Number or Email ID',
                      style: FontConstant.styleSemiBold(
                          fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                                color: AppColors.primaryColor),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22.0,right: 22),
                      child: CustomButton(
                        text: 'SEND OTP',
                        onPressed: () {
                          Navigator.pushNamed(context, '/otp');
                          // Get.toNamed('/otp');
                        },
                        color: AppColors.primaryColor,
                        textStyle: FontConstant.styleRegular(
                            fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You don't have any account?",
              style: FontConstant.styleRegular(
                  fontSize: 14, color: Colors.grey.shade600),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'SignUp',
                style: FontConstant.styleRegular(
                    fontSize: 14, color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}