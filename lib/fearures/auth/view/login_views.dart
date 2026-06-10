import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/app_colors.dart';
import 'package:flutter_application_2/fearures/auth/view/signup_view.dart';
import 'package:flutter_application_2/fearures/auth/widget/cusrom_bto.dart';
import 'package:flutter_application_2/root.dart';
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Gap(30),

                    SvgPicture.asset("assets/logo/logo.svg"),

                    const Gap(10),

                    const CustomText(
                      text: "Welcome back, Discover the best fast food",
                      color: Colors.white,
                      size: 13,
                      Weight: FontWeight.w500,
                    ),

                    const Gap(70),

                    CustomTextfiled(
                      hite: 'Example@gmail.com',
                      ispasword: false,
                      controller: emailController,
                      fieldType: 'email',
                    ),

                    const Gap(20),

                    CustomTextfiled(
                      hite: "Password",
                      ispasword: true,
                      controller: passController,
                      fieldType: 'password',
                    ),

                    const Gap(20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupView(),
                              ),
                            );
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Gap(30),

                    Cutomauthbtn(
                      text: "Login",
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Root(),
                            ),
                          );
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
