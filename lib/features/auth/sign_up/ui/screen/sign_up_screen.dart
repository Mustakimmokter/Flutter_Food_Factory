import 'package:flutter/material.dart';
import 'package:food_factory/features/auth/sign_up/ui/component/index.dart';
import 'package:food_factory/shared/utils/index.dart';
import 'package:food_factory/shared/widgets/index.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.symmetric(horizontal: horizontalPadding,vertical: verticalPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      HeaderAndBackButton(
                        back: (){
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      CustomTextField(
                        controller: nameCTLR,
                        hintText: 'Name',
                        onChanged: (name){
                          name = nameCTLR.text;
                        },
                      ),
                      const SizedBox(height: 10),
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
                      const SizedBox(height: 35),
                      FooterButton(
                        onTap: (){},
                        title: 'Sign up',
                      ),
                      const SizedBox(height: 25),
                      const CustomText(
                        text: 'By clicking sign up you to the our\nterms and condition',
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                        text: 'Already an account?',
                        fontWeight: FontWeight.w400,
                      ),
                      CustomTextButton(
                        onTap: (){},
                        title: 'Log in',
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
