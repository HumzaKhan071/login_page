import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_page/Screens/darktheme/colors.dart';
import 'package:login_page/Screens/darktheme/controllers/sign_cup_controller.dart';
import 'package:login_page/Screens/darktheme/signin_page.dart';
import 'package:login_page/Screens/darktheme/widgets/mycontainer.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SignupController _controller = SignupController();

    return Scaffold(
      backgroundColor: ColorsConstant.backgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.15),
              Card(
                color: ColorsConstant.backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                elevation: 10,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    width: 500,
                    decoration: BoxDecoration(
                        color: ColorsConstant.forebackgroundColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Create New \nAccount",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30),
                        MyContainer(
                          hintText: "User Name",
                          icon: Icons.person_outline,
                          controller: _controller.userNameController,
                        ),
                        const SizedBox(height: 20),
                        MyContainer(
                          hintText: "Email",
                          icon: Icons.email_outlined,
                          controller: _controller.emailController,
                        ),
                        const SizedBox(height: 20),
                        MyContainer(
                          hintText: "Password",
                          icon: Icons.lock_outline,
                          isPassword: true,
                          controller: _controller.passwordController,
                        ),
                        const SizedBox(height: 30),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorsConstant.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (_controller
                                      .userNameController.text.isEmpty &&
                                  _controller.emailController.text.isEmpty &&
                                  _controller
                                      .passwordController.text.isEmpty) {
                                Get.snackbar(
                                  "Error",
                                  "Please fill all fields",
                                );
                              }
                            },
                            child: Text("Create",
                                style: TextStyle(
                                    color: ColorsConstant.backgroundColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextButton(
                          onPressed: () {
                            Get.to(() => SignInPage());
                          },
                          child: Text("Login",
                              style: TextStyle(
                                  color: ColorsConstant.yellow,
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
