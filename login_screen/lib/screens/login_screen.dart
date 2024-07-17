import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen/compenents/app_text_style.dart';
import 'package:login_screen/compenents/rounded_button.dart';
import 'package:login_screen/compenents/rounded_input_field.dart';
import 'package:login_screen/compenents/square_box.dart';
import 'package:login_screen/screens/register_screen.dart';
import 'dart:developer';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            child: Opacity(
              opacity: 0.7,
              child: SvgPicture.asset(
                "assets/images/wave_purple_up.svg",
                height: 250,
                width: 100,
              ),
            )),
        Column(
          children: [
            SizedBox(
              height: 200,
            ),
            //image
            SvgPicture.asset(
              "assets/images/welcome.svg",
              height: 100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //ortadaki gri alanım
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(20),
                  height: 320,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F3F5),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      RoundedInputField(
                        isPassword: false,
                        isEmail: true,
                        hintText: "E-mail",
                        icon: Icons.mail,
                        onChange: (value) {},
                      ),

                      RoundedInputField(
                        isPassword: true,
                        isEmail: false,
                        hintText: "Password",
                        icon: Icons.lock,
                        onChange: (value) {},
                      ),
                      Text(
                        "Forgot Password ?",
                        style: AppTextStyle.MINI_BOLD_DESCRIPTION_TEXT,
                      ),
                      RoundedButton(
                        text: "Login",
                        press: () {},
                        color: Color.fromARGB(255, 54, 53, 65),
                      )

                      //ınput text
                      //ınput text
                      //text
                      //button
                    ],
                  ),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    indent: 50,
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Or Contunie with",
                        style: AppTextStyle.MINI_DESCRIPTION_TEXT,
                      )),
                  Expanded(
                      child: Divider(
                    endIndent: 50,
                    thickness: 0.5,
                    color: Colors.grey,
                  )),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareBox(
                  imagePath: "assets/logo/google.png",
                ),
                SizedBox(
                  width: 25,
                ),
                SquareBox(
                  imagePath: "assets/logo/apple-logo.png",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    print("test");
                  },
                  child: Text(
                    "Not a member ?",
                    style: AppTextStyle.MINI_DEFAULT_DESCRIPTION_TEXT,
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    log("message");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterScreen()));
                  },
                  child: Text(
                    "Registir now",
                    style: AppTextStyle.MINI_DESCRIPTION_BOLD,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            )
          ],
        ),
        Positioned(
            bottom: 0,
            child: Opacity(
                opacity: 0.1,
                child: SvgPicture.asset(
                  "assets/images/wave-grey_down.svg",
                  height: 300,
                  width: 100,
                ))),
      ],
    ));
  }
}
