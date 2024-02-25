import 'package:flutter/material.dart';
import 'Signup_3.dart';

class EnthusiastSignUpPage2 extends StatelessWidget {
  final String username;

  EnthusiastSignUpPage2({required this.username});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/main_background.png',
              fit: BoxFit.fill,
            ),
          ),
          // Enthusiast header
          Positioned(
            top: screenHeight * 0.025,
            left: screenWidth * 0.35,
            child: Text(
              'Enthusiast',
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          // Create an Account text
          Positioned(
            top: screenHeight * 0.20,
            left: screenWidth * 0.23,
            child: Container(
              child: Text(
                'Please Set Your Password',
                style: TextStyle(
                  fontSize: screenHeight * 0.023, // Increased font size
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Password label
          Positioned(
            top: screenHeight * 0.30,
            left: screenWidth * 0.05,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Password input
          Positioned(
            top: screenHeight * 0.34,
            left: screenWidth * 0.1, // Adjusted left margin
            child: Container(
              margin: EdgeInsets.only(
                bottom: screenHeight * 0.02,
              ),
              width: screenWidth * 0.8,
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  screenHeight * 0.03,
                ),
                color: Color(0xff062843),
                border: Border.all(
                  color: Color(0xffa0a0a0),
                  width: 1.0,
                ),
              ),
              child: TextField(
                controller: _passwordController,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.025,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05,
                    screenHeight * 0.01,
                    screenWidth * 0.02,
                    screenHeight * 0.01,
                  ),
                ),
              ),
            ),
          ),
          // Confirm Password label
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth * 0.05,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Confirm Password input
          Positioned(
            top: screenHeight * 0.49,
            left: screenWidth * 0.1, // Adjusted left margin
            child: Container(
              margin: EdgeInsets.only(
                bottom: screenHeight * 0.02,
              ),
              width: screenWidth * 0.8,
              height: screenHeight * 0.065,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  screenHeight * 0.03,
                ),
                color: Color(0xff062843),
                border: Border.all(
                  color: Color(0xffa0a0a0),
                  width: 1.0,
                ),
              ),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.025,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05,
                    screenHeight * 0.01,
                    screenWidth * 0.02,
                    screenHeight * 0.01,
                  ),
                ),
              ),
            ),
          ),
          // Continue button
          Positioned(
            top: screenHeight * 0.65,
            left: screenWidth * 0.3,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue button onPressed
                  String password = _passwordController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EnthusiastSignUpPage3(
                        username: username,
                        password: password,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff032f1f),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(screenHeight * 0.03),
                    side: BorderSide(color: Color(0xffa0a0a0), width: 1.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.025,
                    horizontal: screenWidth * 0.075,
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
