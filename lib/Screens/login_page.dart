import 'package:flutter/material.dart';
import 'package:login_page/Screens/widgets/my_text_field_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff182052),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
            backgroundColor: const Color(0xff182052),
            elevation: 0,
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Create new Account",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(10),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  "Already Registered? Login",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTextFieldContainer(
                  title: "PLEASE ENTER YOUR NAME",
                  hintText: "Jiara Martins",
                ),
                MyTextFieldContainer(
                  title: "PLEASE ENTER YOUR EMAIL",
                  hintText: "hello@reallygreatsite.com",
                ),
                MyTextFieldContainer(
                  title: "PLEASE ENTER YOUR PASSWORD",
                  hintText: "***",
                  isPassword: true,
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff182052),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
