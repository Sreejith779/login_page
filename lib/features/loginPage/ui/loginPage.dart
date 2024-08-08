import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/features/HomePage.dart';
import 'package:login_page/features/onBoardingPage/ui/onBoardingPage.dart';
import 'package:login_page/utils/texts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Transform.translate(
          offset: Offset(10, 00),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                OnBoardingPage()));
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                weight: 50,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headingText("Let's Sign you In.", Colors.black),
              _headingText("Welcome back you've been missed!", Colors.grey),
              SizedBox(
                height: mHeight * 0.02,
              ),
              _text("Username or Email"),
              _textFormField(context, "Enter Username or Email"),
              _text("Password"),
              _textFormField(context, "Enter Password"),
        
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Divider(),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _signInButton(context,"assets/google.png"),
                    _signInButton(context,"assets/linkedin.png"),
                    _signInButton(context,"assets/facebook.png"),
                  ],
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text("Don't have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.7)
                      ),),
                    ),
                    _text(" Register")
        
                  ],
                ),
              ),
SizedBox(height: 2),
              _button(context,"Login", Colors.white, Colors.black, () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                HomePage()));
              })
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }

  Widget _headingText(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        title,
        style: TextStyles()
            .bTtext
            .copyWith(fontSize: 30, color: color, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _text(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _textFormField(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 1.5),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              decoration:
                  InputDecoration(hintText: title, border: InputBorder.none),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signInButton(BuildContext context,String imagePath){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.16,
        height: MediaQuery.of(context).size.height*0.07,
         decoration: BoxDecoration(

       borderRadius: BorderRadius.circular(15),
       border: Border.all(
         color: Colors.grey,
         width: 2
       )
         ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(imagePath),
        ),
      ),
    );
  }

  Widget _button(
      BuildContext context,
      String buttonName,
      Color textColor,
      Color buttonColor,
      VoidCallback navigate
      ) {
    return Padding(
      padding: const EdgeInsets.all(12),
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
