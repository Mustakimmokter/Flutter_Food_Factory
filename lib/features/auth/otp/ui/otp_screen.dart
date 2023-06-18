import 'package:flutter/material.dart';
import 'package:food_factory/features/auth/otp/ui/component/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({Key? key}) : super(key: key);

  final TextEditingController nameCTLR = TextEditingController();
  final TextEditingController phoneCTLR = TextEditingController();
  final TextEditingController passwordCTLR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: bottomPadding,top: topPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackAndHeader(
              phone: '+8801779504864',
              back: (){
              Navigator.pop(context);
            },
            ),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OTPField(),
                  const SizedBox(height: 20),
                  FooterButton(
                    onTap: (){},
                    title: 'Verify',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: 'Didn\'t receive a OTP?',
                  fontWeight: FontWeight.w400,
                ),
                CustomTextButton(
                  onTap: (){
                  },
                  title: 'OTP Resend',
                  isUnderline: true,
                ),
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}

