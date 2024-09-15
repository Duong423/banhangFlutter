// ignore_for_file: file_names

import 'package:app_banhang/screens/auth-ui/sign-in-screen.dart';
import 'package:app_banhang/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppConstant.appScendoryColor,
          title: Text(
            "Đăng ký",
            style: TextStyle(color: AppConstant.appTextColor),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Chào mừng bạn",
                 style: TextStyle(
                      color: AppConstant.appScendoryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                      ),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            ///////////////////////
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "UserName",
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            //////////////////////
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            //////////////////
             Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: "City",
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    prefixIcon: Icon(Icons.location_pin),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            ////////////////////
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  cursorColor: AppConstant.appScendoryColor,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(top: 2.0, left: 8.0),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: Get.height / 20,
            ),
            
            ////////Button sign in//////////////////////////////////////////////////////////////////////////////


            Material(
              child: Container(
                width: Get.width / 2,
                height: Get.height / 20,
                decoration: BoxDecoration(
                  color: AppConstant.appScendoryColor,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextButton.icon(
                  label: Text(
                    "Đăng ký",
                    style: TextStyle(color: AppConstant.appTextColor),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 20,
            ),

            //////////////////////////////////////////////////////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Đã có tài khoản ?",
                  style: TextStyle(color: AppConstant.appScendoryColor),
                ),
                GestureDetector(
                  onTap: () => Get.offAll(()=>SignInScreen()),
                  child: Text(
                  "Đăng nhập",
                  style: TextStyle(
                      color: AppConstant.appScendoryColor,
                      fontWeight: FontWeight.bold),
                ),
                ),
              ],
            )
          ],
        )
        ),
        )
      );
    });
  }
}
