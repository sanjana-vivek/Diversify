import 'package:flutter/material.dart';
import 'Signup_2.dart';

class EnthusiastSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    TextEditingController _usernameController = TextEditingController();

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
            left: screenWidth * 0.30,
            child: Container(
              child: Text(
                'Create an Account',
                style: TextStyle(
                  fontSize: screenHeight * 0.026, // Increased font size
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Username label
          Positioned(
            top: screenHeight * 0.30,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05), // Added left padding
              child: Text(
                'Username',
                style: TextStyle(
                  fontSize: screenHeight * 0.025, // Increased font size
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Username input
          Positioned(
            top: screenHeight * 0.34,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Container(
              margin: EdgeInsets.only(
                left: screenWidth * 0.05, // Adjusted left margin
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
                controller: _usernameController,
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenHeight * 0.025,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.fromLTRB(
                    screenWidth * 0.05, // Adjusted left padding
                    screenHeight * 0.01,
                    screenWidth * 0.02,
                    screenHeight * 0.015,
                  ),
                ),
              ),
            ),
          ),
          // Full Name label
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05), // Added left padding
              child: Text(
                'Full Name',
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Full Name input
          Positioned(
            top: screenHeight * 0.49,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Container(
              margin: EdgeInsets.only(
                left: screenWidth * 0.05, // Adjusted left margin
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
                    screenWidth * 0.05, // Adjusted left padding
                    screenHeight * 0.01,
                    screenWidth * 0.02,
                    screenHeight * 0.015,
                  ),
                ),
              ),
            ),
          ),
          // Email label
          Positioned(
            top: screenHeight * 0.60,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05), // Added left padding
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Email input
          Positioned(
            top: screenHeight * 0.64,
            left: screenWidth * 0.05, // Adjusted left padding
            child: Container(
              margin: EdgeInsets.only(
                left: screenWidth * 0.05, // Adjusted left margin
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
                    screenWidth * 0.05, // Adjusted left padding
                    screenHeight * 0.01,
                    screenWidth * 0.02,
                    screenHeight * 0.015,
                  ),
                ),
              ),
            ),
          ),
          // Continue button
          Positioned(
            top: screenHeight * 0.8,
            left: screenWidth * 0.3,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue button onPressed
                  String username = _usernameController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EnthusiastSignUpPage2(username: username),
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
                  'Continue',
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
