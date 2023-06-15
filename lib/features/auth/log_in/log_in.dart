import 'package:flutter/material.dart';
import 'package:food_factory/shared/infrastructure/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final TextEditingController nameCTLR = TextEditingController();
  final TextEditingController phoneCTLR = TextEditingController();
  final TextEditingController passwordCTLR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: SizeUtils.getProportionateScreenHeight(scrollPagePadding)),
        child: SingleChildScrollView(
          //reverse: true,
          child: SizedBox(
            height: SizeUtils.screenHeight - SizeUtils.getProportionateScreenHeight(scrollPagePadding),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,bottom: bottomPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      text: 'Log in',
                      fontWeight: FontWeight.w700,
                      align: TextAlign.left,
                      size: headerFontSize,
                      color: primaryBrandColor,
                    ),
                  ),
                  Column(
                    children: [
                      CustomTextField(
                        controller: phoneCTLR,
                        hintText: 'Phone number',
                        onChanged: (phn){
                          phn = phoneCTLR.text;
                        },
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        controller: passwordCTLR,
                        suffix: const Icon(Icons.remove_red_eye,color: Colors.grey,),
                        hintText: 'Password',
                        onChanged: (pass){
                          pass = passwordCTLR.text;
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: CustomTextButton(
                          onTap: (){},
                          title: 'Forget password',
                        ),
                      ),
                      const SizedBox(height: 35),
                      FooterButton(
                        onTap: (){},
                        title: 'Log in',
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'Don\'t have an account?',
                        fontWeight: FontWeight.w400,
                      ),
                      CustomTextButton(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoute.signUpScreen);
                        },
                        title: 'Sign up',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
