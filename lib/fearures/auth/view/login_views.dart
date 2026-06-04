import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/auth/widget/cusrom_bto.dart';
import 'package:flutter_application_2/shared/custom_text.dart';
import 'package:flutter_application_2/shared/custom_textfiled.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Gap(30),

                    SvgPicture.asset("assets/logo/logo.svg"),

                    const Gap(10),

                    const CustomText(
                      text: "welcome back, Discover in the best fast food",
                      color: Colors.white,

                      size: 13,
                      Weight: FontWeight.w500,
                    ),

                    const Gap(70),

                    CustomTextfiled(
                      hite: 'Example@gmai.com',
                      ispasword: false,
                      controller: emailController,
                    ),

                    const Gap(20),

                    CustomTextfiled(
                      controller: passController,
                      hite: "Password",
                      ispasword: true,
                    ),

                    const Gap(30),
                    Cutomauthbtn(
                      text: "Login",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print("success Login");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
