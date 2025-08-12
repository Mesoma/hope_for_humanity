// ignore_for_file: prefer_const_constructors,
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hope_for_humanity/constant/app_pallete.dart';
import 'package:hope_for_humanity/pages/sign_in_page.dart';

class DubIntro extends StatefulWidget {
  const DubIntro({super.key});

  @override
  State<DubIntro> createState() => _DubIntroState();
}

class _DubIntroState extends State<DubIntro> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context)=> SignInPage()
          )
      );
    },
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/smiley.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppPallete.primaryColor.withOpacity(0.7),
                AppPallete.primaryColor.withOpacity(0.7),
                AppPallete.primaryColor.withOpacity(0.9),
                AppPallete.primaryColor.withOpacity(1.0),
              ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height:190),
                  //App Icon
                  Image.asset(
                    'assets/images/hope_logo.png',
                    height: 130,
                    width: 130,
                  ),

                  const SizedBox(height: 20,),

                  //App Name
                  Column(
                    children: [
                      Text(
                        "HOPE FOR",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "HUMANITY",
                        style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 160),

                  //App Intro
                  Text(
                    "Welcome to",
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: AppPallete.textColor2
                    ),
                  ),
                  Text(
                    "hope for humanity",
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: AppPallete.textColor2,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//// ignore_for_file: prefer_const_constructors,
// // ignore_for_file: prefer_const_literals_to_create_immutables
//
// import 'package:flutter/material.dart';
// import 'package:hope_for_humanity/constant/app_pallete.dart';
// import 'package:hope_for_humanity/pages/sign_in_page.dart';
//
// class DubIntro extends StatefulWidget {
//   const DubIntro({super.key});
//
//   @override
//   State<DubIntro> createState() => _DubIntroState();
// }
//
// class _DubIntroState extends State<DubIntro> {
//   @override
//   void initState() {
//     Future.delayed(Duration(seconds: 4),() {
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context)=> SignInPage()
//           )
//       );
//     },
//     );
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Image.asset(
//             'assets/images/smiley.png',
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//           ),
//
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 AppPallete.primaryColor.withOpacity(0.7),
//                 AppPallete.primaryColor.withOpacity(0.7),
//                 AppPallete.primaryColor.withOpacity(0.9),
//                 AppPallete.primaryColor.withOpacity(1.0),
//               ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter
//               ),
//             ),
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height:190),
//                   //App Icon
//                   Image.asset(
//                     'assets/images/hope_logo.png',
//                     height: 130,
//                     width: 130,
//                   ),
//
//                   const SizedBox(height: 20,),
//
//                   //App Name
//                   Column(
//                     children: [
//                       Text(
//                         "HOPE FOR",
//                         style: TextStyle(
//                           fontSize: 40,
//                           color: Colors.white,
//                         ),
//                       ),
//                       Text(
//                         "HUMANITY",
//                         style: TextStyle(
//                             fontSize: 43,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   const SizedBox(height: 160),
//
//                   //App Intro
//                   Text(
//                     "Welcome to",
//                     style: TextStyle(
//                         fontSize: 33,
//                         fontWeight: FontWeight.bold,
//                         color: AppPallete.textColor2
//                     ),
//                   ),
//                   Text(
//                     "hope for humanity",
//                     style: TextStyle(
//                       fontSize: 33,
//                       fontWeight: FontWeight.bold,
//                       color: AppPallete.textColor2,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
