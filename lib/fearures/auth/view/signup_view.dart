import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/auth/widget/cusrom_bto.dart';
import 'package:flutter_application_2/root.dart';
import 'package:flutter_application_2/shared/custom_textfiled.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    nameController.dispose();
    confirmpassController.dispose();
    super.dispose();
  }

  void signup() {
    if (formKey.currentState!.validate()) {
      if (passController.text != confirmpassController.text) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Passwords do not match")));
        return;
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Root()),
      );
    }
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Gap(50),

                    SvgPicture.asset("assets/logo/logo.svg"),

                    const Gap(60),

                    CustomTextfiled(
                      hite: 'Name',
                      ispasword: false,
                      controller: nameController,
                      fieldType: 'name',
                    ),

                    const Gap(20),

                    CustomTextfiled(
                      hite: 'Example@gmail.com',
                      ispasword: false,
                      controller: emailController,
                      fieldType: 'email',
                    ),

                    const Gap(20),

                    CustomTextfiled(
                      hite: 'Password',
                      ispasword: true,
                      controller: passController,
                      fieldType: 'password',
                    ),

                    const Gap(20),

                    CustomTextfiled(
                      hite: 'Confirm Password',
                      ispasword: true,
                      controller: confirmpassController,
                      fieldType: 'password',
                    ),

                    const Gap(20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Gap(25),

                    Cutomauthbtn(text: "Sign Up", onTap: signup),
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
