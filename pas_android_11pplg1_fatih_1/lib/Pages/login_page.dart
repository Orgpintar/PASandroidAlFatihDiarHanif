
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_android_11pplg1_fatih_1/Component/custom_button.dart';
import 'package:pas_android_11pplg1_fatih_1/Component/custom_text.dart';
import 'package:pas_android_11pplg1_fatih_1/Component/custom_textfield.dart';
import 'package:pas_android_11pplg1_fatih_1/Controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const SizedBox(height: 90),

                // Logo / Judul
                CustomText(
                  text: "Instagram",
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),

                const SizedBox(height: 50),

                // Username
                CustomTextfield(
                  controller: controller.txtUsername,
                  myHint: "Username",
                  obscureText: false,
                  prefixIcon: Icons.person_outline,
                ),

                const SizedBox(height: 15),

                // Password
                CustomTextfield(
                  controller: controller.txtPassword,
                  myHint: "Password",
                  obscureText: true,
                  prefixIcon: Icons.lock_outline,
                ),

                const SizedBox(height: 15),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Color(0xFF3897F0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Login Button
                Obx(() => controller.isLoading.value
                    ? const CircularProgressIndicator(
                        color: Color(0xFF3897F0),
                      )
                    : CustomButton(
                        onPressed: () {
                          controller.login();
                        },
                        text: "Log In",
                      )),

                const SizedBox(height: 30),

                // Divider
                Row(
                  children: [
                    const Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: CustomText(
                        text: "OR",
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Facebook Login
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Color(0xFF1877F2),
                  ),
                  label: const Text(
                    "Log in with Facebook",
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 100),

                // Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Don't have an account?",
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xFF3897F0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
