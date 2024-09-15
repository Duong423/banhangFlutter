import 'package:app_banhang/screens/auth-ui/sign-up-screen.dart';
import 'package:app_banhang/utils/app-constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppConstant.appScendoryColor,
          title: Text(
            "Đăng nhập",
            style: TextStyle(color: AppConstant.appTextColor),
          ),
        ),
        body: Container(
            child: Column(
          children: [
            SizedBox(
              height: Get.height / 50,
            ),
            isKeyboardVisible
                ? Text("Vùi lòng nhập chính xác tài khoản", style: TextStyle(fontStyle: FontStyle.italic, color: Color.fromARGB(255, 177, 175, 175)))
                : Column(
                    children: [Lottie.asset("assets/images/splash-icon.json")],
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              alignment: Alignment.centerRight,
              child: Text(
                "Quên mật khẩu",
                style: TextStyle(
                  color: AppConstant.appScendoryColor,
                  fontWeight: FontWeight.bold,
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
                    "Đăng nhập",
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
                  "Bạn chưa có tài khoản ?",
                  style: TextStyle(color: AppConstant.appScendoryColor),
                ),
                GestureDetector(
                  onTap: () => Get.offAll(()=> SignUpScreen()),
                  child: Text(
                  "Đăng kí tài khoản",
                  style: TextStyle(
                      color: AppConstant.appScendoryColor,
                      fontWeight: FontWeight.bold),
                ),
                ),
              ],
            )
          ],
        )),
      );
    });
  }
}
