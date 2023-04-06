import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../reuseable_component/styles.dart';
import '../reuseable_component/widget.dart';
import 'homepage.dart';
import 'login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBack,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xff3e4784)),
                child: const FlutterLogo(
                  size: 80,
                ),
              ),
              const SizedBox(height: 50),
              inputCompo(
                  'user@gmail.com', 'Email Address', Icons.email_outlined),
              const SizedBox(height: 30),
              inputCompo('**********', 'Password', Icons.lock_outline),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () => Get.to(const HomePage()),
                child: Container(
                  width: double.infinity,
                  height: Get.height * 0.1 - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor),
                  child: const Center(
                    child: Text(
                      'Reigster',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              heightsize(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Get.off(const LoginPage()),
                    child: const Text('Login'),
                  ),
                  // TextButton(
                  //     onPressed: () {}, child: const Text('Forgot Password?'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
