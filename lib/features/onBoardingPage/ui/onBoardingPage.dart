import 'package:flutter/material.dart';
import 'package:login_page/features/loginPage/ui/loginPage.dart';

import 'package:login_page/utils/texts.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: mHeight * 0.45,
              width: double.maxFinite,
              child: Center(
                child: Lottie.asset("assets/Animation - 1723112975168.json",
                repeat: false),
              ),
            ),
            Text(
              "Welcome to SeekJob",
              style: TextStyles().hTtext,
              textAlign: TextAlign.center,
            ),
            Text(
              "Discover job opportunities, connect with employers, and advance your career with SeekJob",
              textAlign: TextAlign.center,
              style: TextStyles().bTtext,
            ),
          const  SizedBox(height: 15,),
            _button(context, "Login", Colors.white, Colors.black, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            }),
            _button(context, "Register", Colors.black, Colors.grey, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            })
          ],
        ),
      ),
    );
  }

  Widget _button(BuildContext context, String buttonName, Color textColor,
      Color buttonColor, VoidCallback navigate) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: navigate,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              buttonName,
              style: TextStyle(
                  color: textColor, fontSize: 22, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
