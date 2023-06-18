import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../shared/utils/index.dart';

class OTPField extends StatelessWidget {
  OTPField({Key? key}) : super(key: key);
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5,
      autoFocus: true,
      keyboardType: TextInputType.number,
      obscureText: false,
      cursorColor: primaryBrandColor,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        selectedFillColor: Colors.white,
        activeColor: greyColor,
        inactiveColor: greyColor,
        inactiveFillColor: whiteColor,
        selectedColor: primaryBrandColor,
        borderWidth: 1,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 60,
        fieldWidth: SizeUtils.screenHeight / 15,
        activeFillColor: Colors.white,
      ),
      animationDuration: const Duration(milliseconds: 300),
      enableActiveFill: true,
      //enablePinAutofill: false,
      //errorAnimationController: errorController,
      controller: textEditingController,
      onCompleted: (v) {
        print("Completed");
      },
      onChanged: (value) {
      },
      beforeTextPaste: (text) {
        print("Allowing to paste $text");
        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
        //but you can show anything you want here, like your pop up saying wrong paste format or etc
        return true;
      },
    );
  }
}