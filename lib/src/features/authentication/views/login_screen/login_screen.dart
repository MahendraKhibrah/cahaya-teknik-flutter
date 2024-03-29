import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:cahayaa_teknik/src/features/authentication/controllers/login_controller.dart';
import 'package:cahayaa_teknik/src/features/authentication/views/login_screen/forget_password_widget.dart';
import 'package:cahayaa_teknik/src/features/authentication/views/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController loginScreenC = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: const AssetImage(welcomeImage),
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  "Welcome Back,",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  "Silakan masuk menggunakan akun Anda.",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Obx(
                          () => TextFormField(
                            onChanged: ((value) {
                              loginScreenC.email.value = value;
                            }),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.mail),
                              hintText: 'What is your email?',
                              labelText: 'email *',
                              errorText: loginScreenC.isEmailTrue.value
                                  ? null
                                  : "email tidak ditemukan",
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Obx(
                          () => TextFormField(
                            onChanged: ((value) {
                              loginScreenC.password.value = value;
                            }),
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.vpn_key),
                              hintText: 'What is the password?',
                              labelText: 'password *',
                              errorText: loginScreenC.isPasswordTrue.value
                                  ? null
                                  : "password salah",
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.bottomSheet(
                              const ForgetPasswordWidget(),
                            );
                          },
                          child: Text(
                            "forgot password?",
                            style: GoogleFonts.montserrat(
                              color: ltbBlue,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              loginScreenC.loginCheck();
                            },
                            child: Text(
                              "LOGIN",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "OR",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(googleLogo),
                      width: 25,
                    ),
                    label: Text(
                      "Login with Google.",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "dont have an account?",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.off(const SignupScreen());
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.montserrat(
                          color: ltbBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
