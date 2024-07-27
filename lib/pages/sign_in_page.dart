// ignore_for_file: prefer_const_constructors,
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hope_for_humanity/constant/app_pallete.dart';
import 'package:hope_for_humanity/pages/sign_up_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),

              //Logo Icon
              Image.asset(
                  'assets/images/hope_icon.png',
                  height: 54,
                  width: 54,
              ),

              const SizedBox(height: 80),

              //Sign in your account
              Text(
                  "Sign in your account",
                   style: TextStyle(
                     fontSize: 26.72,
                     fontWeight: FontWeight.bold
                   )
              ),

              const SizedBox(height: 40),

              //email text
              Text(
                  "Email                                                           ",
                  style: TextStyle(
                    color: AppPallete.textheader,
                    fontSize: 16,
                  ),
              ),

              const SizedBox(height: 8),

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

              const SizedBox(height: 8),

              //password text
              Text(
                "Password                                                   ",
                style: TextStyle(
                  color: AppPallete.textheader,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 8),

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

              const SizedBox(height: 25),

              //sign in container
              Container(
                height: 42,
                width: 288,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppPallete.primaryColor
                ),
                child: Center(
                    child: Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),
                    )
                ),
              ),

              const SizedBox(height: 15),

              //or sign with text
              Text(
                  "or sign in with",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppPallete.greytext.withOpacity(0.85)
                  ),
              ),

              const SizedBox(height: 20),

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

                  const SizedBox(width: 16),

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

                  const SizedBox(width: 16),

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

              const SizedBox(height: 40),

              //row of two texts(dont hv account, sign up)
              Padding(
                padding: const EdgeInsets.only(left: 85, right: 55),
                child: Row(
                  children: [
                    Text(
                        "Don't have an account?",
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
                                builder: (context)=> SignUpPage()
                            )
                        ),
                        child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppPallete.primaryColor
                            ),
                        )
                    )
                  ],
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