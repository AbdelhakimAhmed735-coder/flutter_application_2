import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/auth/widget/cusrom_bto.dart';
import 'package:flutter_application_2/shared/custom_textfiled.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController confirmpassController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Gap(200),
                SvgPicture.asset("assets/logo/logo.svg"),
                const Gap(80),

                CustomTextfiled(
                  hite: 'Name',
                  ispasword: false,
                  controller: nameController,
                ),

                const Gap(25),
                CustomTextfiled(
                  hite: 'Example@gmai.com',
                  ispasword: false,
                  controller: emailController,
                ),
                const Gap(25),
                CustomTextfiled(
                  controller: passController,
                  hite: "Password",
                  ispasword: true,
                ),
                const Gap(25),

                CustomTextfiled(
                  controller: confirmpassController,
                  hite: "confirm Password",
                  ispasword: true,
                ),
                const Gap(20),
                Cutomauthbtn(
                  text: "sign up",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print("success rgister");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
