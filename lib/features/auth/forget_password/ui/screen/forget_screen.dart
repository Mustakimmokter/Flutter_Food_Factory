import 'package:flutter/material.dart';
import 'package:food_factory/features/auth/forget_password/ui/component/index.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

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
            BackButtonAndHeader(
              back: (){
                Navigator.pop(context);
              },
            ),
            SingleChildScrollView(
             reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controller: phoneCTLR,
                    hintText: 'Phone number',
                    onChanged: (phn){
                      phn = phoneCTLR.text;
                    },
                  ),
                  const SizedBox(height: 35),
                  FooterButton(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoute.otpScreen);
                    },
                    title: 'Send',
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
