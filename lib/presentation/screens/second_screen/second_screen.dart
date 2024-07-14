import 'package:app_final_2/presentation/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  static const name = 'SecondScreen';
  static const path = '/SecondScreen';
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double smallSpacing = screenSize.height * 0.02;
    final double letterSize = screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -screenSize.width * 0.175, 
            left: -screenSize.width * 0.175, 
            child: CircleAvatar(
              radius: screenSize.width * 0.35,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: -screenSize.width * 0.2, 
            right: -screenSize.width * 0.2, 
            child: CircleAvatar(
              radius: screenSize.width * 0.4,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.9,
            right:   screenSize.width * 0.4,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.75,
            left:  screenSize.width * 0.5,
            child: CircleAvatar(
              radius: screenSize.width * 0.50,
              backgroundColor: Colors.lightBlue.withOpacity(0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
            child: IconButton(
              onPressed: () {
                context.push(LoginScreen.path);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
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
                      'Register',
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
                  SizedBox(
                    height: screenSize.height * 0.05,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Repeat Password',
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
                ],
              ),
            ),
          ),
        
          Container(
            alignment: Alignment.bottomCenter,
            height: smallSpacing * 36,
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: letterSize * 0.030,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]
      )
    );
  }
}