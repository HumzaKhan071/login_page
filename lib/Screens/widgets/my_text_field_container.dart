import 'package:flutter/material.dart';

class MyTextFieldContainer extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isPassword;
  final double widhth;
  const MyTextFieldContainer({
    Key? key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.widhth = 500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            title,
            style: TextStyle(color: Color(0xff8F8E8E), fontSize: 10),
          ),
        ),
        SizedBox(height: 8),
        Container(
            height: 60,
            width: widhth,
            decoration: BoxDecoration(
              color: Color(0xffECECEC),
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 13, left: 15),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black),
              ),
            )),
        SizedBox(height: 10),
      ],
    );
  }
}
