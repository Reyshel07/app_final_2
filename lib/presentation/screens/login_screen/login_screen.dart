import 'package:app_final_2/presentation/screens/second_screen/second_screen.dart';
import 'package:app_final_2/presentation/screens/third_screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  static const name = 'LoginScreen';
  static const path = '/LoginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: screenSize.height * 0.33,
            right:   screenSize.width * 0.4,
            child: CircleAvatar(
              radius: screenSize.width * 0.70,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.6,
            left:  screenSize.width * 0.001,
            child: CircleAvatar(
              radius: screenSize.width * 0.80,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: letterSize * 0.030,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  SizedBox(height: smallSpacing),
                  SizedBox(
                    height: screenSize.height * 0.05,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          fontSize: letterSize * 0.015,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: smallSpacing),
                  SizedBox(
                    height: screenSize.height * 0.05,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: letterSize * 0.015,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: smallSpacing),
                  Row(
                    children: [
                      Text(
                        'forget password?',
                        style: TextStyle(
                          fontSize: letterSize * 0.015,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.01),
                      Text(
                        'Get it Back',
                        style: TextStyle(
                          fontSize: letterSize * 0.015,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),       
          Container(
            alignment: Alignment.bottomCenter,
            height: smallSpacing * 33,
            child: ElevatedButton(
              onPressed: () {
                context.push(ThirdScreen.path);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: letterSize * 0.015,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: TextStyle(
                      fontSize: letterSize * 0.016,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  GestureDetector(
                    onTap: () {
                      context.push(SecondScreen.path);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: letterSize * 0.025,
                        color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}
