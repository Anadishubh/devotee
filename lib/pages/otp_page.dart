import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  // Controller to handle the OTP input
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Verify',
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: screenHeight * 0.49,
              left: screenWidth * 0.17,
            ),
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
                image: AssetImage('assets/images/otp.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Code is sent to +91 *******876',
                  style: FontConstant.styleMedium(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOtpTextField(1),
                  _buildOtpTextField(2),
                  _buildOtpTextField(3),
                  _buildOtpTextField(4),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive OTP?",
                    style: FontConstant.styleRegular(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Send Again",
                    style: FontConstant.styleRegular(
                      fontSize: 13,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Resend in 00:15',
                style: FontConstant.styleRegular(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CustomButton(
                  text: 'VERIFY',
                  onPressed: () {
                    Get.toNamed('/profile1');
                  },
                  color: AppColors.primaryColor,
                  textStyle: FontConstant.styleRegular(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildOtpTextField(int position) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextFormField(
        controller: position == 1
            ? _otpController
            : TextEditingController(),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onChanged: (value) {
          if (value.length == 1 && position < 4) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}