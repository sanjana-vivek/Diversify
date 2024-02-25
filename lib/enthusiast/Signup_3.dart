import 'package:flutter/material.dart';
import '../home_screen.dart';
import '../scanning.dart';

class EnthusiastSignUpPage3 extends StatelessWidget {
  final String username;
  final String password;

  EnthusiastSignUpPage3({required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
          // Congratulations Text
          Positioned(
            top: screenHeight * 0.32,
            left: screenWidth * 0.30,
            child: Text(
              'Congratulations',
              style: TextStyle(
                fontSize: screenHeight * 0.025,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Image
          Positioned(
            top: screenHeight * 0.30,
            left: screenWidth * 0.4,
            child: Image.asset(
              'assets/images/registeredbadge.png', // Replace with your image path
              width: screenWidth * 0.2, // Adjust size as needed
              height: screenHeight * 0.2,
            ),
          ),
          // Account created Text
          Positioned(
            top: screenHeight * 0.45,
            left: screenWidth * 0.02,
            child: Container(
              width: screenWidth * 0.95,
              child: Text(
                'Your account has been successfully created',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenHeight * 0.025,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          // Continue button
          Positioned(
            top: screenHeight * 0.6,
            left: screenWidth * 0.3,
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue button onPressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScanningPage(
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
