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
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Login Account',
          style: FontConstant.styleMedium(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                bottom: screenHeight * 0.49, left: screenWidth * 0.17),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'),
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: screenWidth * 1.15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/lock.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Enter Mobile Number or Email ID',
                  style: FontConstant.styleSemiBold(
                      fontSize: 18, color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: AppColors.primaryColor),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomButton(
                  text: 'SEND OTP',
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
                    // Get.toNamed('/otp');
                  },
                  color: AppColors.primaryColor,
                  textStyle: FontConstant.styleRegular(
                      fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You Don't have any account?",
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
