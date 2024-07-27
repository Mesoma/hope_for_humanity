// ignore_for_file: prefer_const_constructors,
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hope_for_humanity/pages/sign_in_page.dart';
import '../constant/app_pallete.dart';

class SignUpPage extends StatefulWidget {

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //back arrow as leading
        leading: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Icon(Icons.arrow_back)
        ),

        //logo icon as actions
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Image.asset(
                'assets/images/hope_icon.png',
                height: 30,
                width: 30,
            ),
          )
        ],

      ),
      body: Center(
        child: ListView(
          children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              //Create your account text
              Text(
                  "Create your account",
                  style: TextStyle(
                      fontSize: 26.72,
                      fontWeight: FontWeight.bold
                  )
              ),

              const SizedBox(height: 25),

              //name text
              Text(
                "Name                                                          ",
                style: TextStyle(
                  color: AppPallete.textheader,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 7),

              // name text field
              Padding(
                padding: const EdgeInsets.only(left:51, right: 51),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppPallete.fillcolor1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      hintText: "ex: Okoye Mmesomachukwu",
                      hintStyle: TextStyle(
                          color: AppPallete.greytext.withOpacity(0.7)
                      )
                  ),
                ),
              ),

              const SizedBox(height: 7),

              //email text
              Text(
                "Email                                                          ",
                style: TextStyle(
                  color: AppPallete.textheader,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 7),

              //email text field
              Padding(
                padding: const EdgeInsets.only(left:51, right: 51),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppPallete.fillcolor1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      hintText: "ex: mesoma@prodevs.io",
                      hintStyle: TextStyle(
                          color: AppPallete.greytext.withOpacity(0.7)
                      )
                  ),
                ),
              ),

              const SizedBox(height: 7),

              //password text
              Text(
                "Password                                                   ",
                style: TextStyle(
                  color: AppPallete.textheader,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 7),

              //password text field
              Padding(
                padding: const EdgeInsets.only(left:51, right: 51),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppPallete.fillcolor1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      hintText: "********",
                      hintStyle: TextStyle(
                          color: AppPallete.greytext.withOpacity(0.7)
                      )
                  ),
                ),
              ),

              const SizedBox(height: 7),

              //confirm password text
              Text(
                "Confirm Password                                    ",
                style: TextStyle(
                  color: AppPallete.textheader,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 7),

              //confirm password text field
              Padding(
                padding: const EdgeInsets.only(left:51, right: 51),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppPallete.fillcolor1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      hintText: "********",
                      hintStyle: TextStyle(

                          color: AppPallete.greytext.withOpacity(0.7)
                      )
                  ),
                ),
              ),

              //row of policy agreement
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //checkbox
                    Checkbox(
                        value: false,
                        onChanged: onChanged,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      side: WidgetStateBorderSide.resolveWith(
                            (states) => BorderSide(
                                width: 1.0,
                                color: AppPallete.primaryColor
                            ),
                      ),

                    ),

                    //I understand
                    Text(
                        "I understood the ",
                      style: TextStyle(
                        fontSize: 14
                      ),
                    ),

                    //terms
                    Text(
                      "terms & policy",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppPallete.primaryColor
                      ),
                    )
                  ],
                ),
              ),

              //sign up container
              Container(
                height: 42,
                width: 288,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppPallete.primaryColor
                ),
                child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                         fontSize: 17
                      ),
                    )
                ),
              ),

              const SizedBox(height: 14),

              //or sign up with text
              Text(
                "or sign up with",
                style: TextStyle(
                    fontSize: 16,
                    color: AppPallete.greytext.withOpacity(0.7),
                ),
              ),

              const SizedBox(height: 13),

              //row of logos(google, facebook, twitter)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //google container
                  Container(
                    height: 42,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppPallete.fillcolor2
                    ),
                    child: Center(
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          height: 27,
                          width: 27,
                        )
                    ),
                  ),

                  const SizedBox(width: 13),

                  //facebook container
                  Container(
                    height: 42,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppPallete.fillcolor2
                    ),
                    child: Center(
                        child: Image.asset(
                          'assets/images/facebook_logo.png',
                          height: 27,
                          width: 27,
                        )
                    ),
                  ),

                  const SizedBox(width: 13),

                  //twitter container
                  Container(
                    height: 42,
                    width: 86,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppPallete.fillcolor2
                    ),
                    child: Center(
                        child: Image.asset(
                          'assets/images/twitter_logo.png',
                          height: 27,
                          width: 27,
                        )
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              //row of two texts(dont hv account, sign up)
              Padding(
                padding: const EdgeInsets.only(left:115, right: 55),
                child: Row(
                children: [
                  Text(
                  "Have an account?",
                  style: TextStyle(
                      color: AppPallete.greytext.withOpacity(0.85),
                      fontSize: 16
                  ),
                ),

                  const SizedBox(width: 10),

                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context)=> SignInPage()
                          )
                      ),
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: AppPallete.primaryColor
                        ),
                      )
                  )
                           ]
                           ),
              )
            ],
                      ),
         ]
        )
      ),
    );
  }
}