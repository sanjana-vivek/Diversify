// enthusiast_login_page.dart

import 'package:flutter/material.dart';
import './enthusiast/Signup_1.dart';
import './scanning.dart';

class EnthusiastLoginPage extends StatefulWidget {
  @override
  _EnthusiastLoginPageState createState() => _EnthusiastLoginPageState();
}

class _EnthusiastLoginPageState extends State<EnthusiastLoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
          // Login header
          Positioned(
            top: screenHeight * 0.025,
            left: screenWidth * 0.35,
            child: Text(
              'Enthusiast',
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          // Login form
          Positioned(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            top: screenHeight * 0.275,
            child: Form(
              child: Column(
                children: [
                  // Username
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                    height: screenHeight * 0.075,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screenHeight * 0.0375),
                      color: Color(0xff062843), // Button color
                      border: Border.all(
                        color: Color(0xffa0a0a0),
                        width: 1.0,
                      ), // Thin white border
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.125,
                            right: screenWidth * 0.025,
                          ),
                          child: Text(
                            'Username:',
                            style: TextStyle(
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.05,
                          color: Color(0xff6a86a0),
                          child: TextFormField(
                            controller: _usernameController,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.black),
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: screenHeight * 0.015,
                                bottom: screenHeight * 0.015,
                                left: screenWidth * 0.02,
                                right: screenWidth * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Password
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                    height: screenHeight * 0.075,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screenHeight * 0.0375),
                      color: Color(0xff062843), // Button color
                      border: Border.all(
                        color: Color(0xffa0a0a0),
                        width: 1.0,
                      ), // Thin white border
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: screenWidth * 0.125,
                            right: screenWidth * 0.025,
                          ),
                          child: Text(
                            'Password:',
                            style: TextStyle(
                              fontSize: screenWidth * 0.055,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.4,
                          height: screenHeight * 0.05,
                          color: Color(0xff6a86a0),
                          child: TextFormField(
                            controller: _passwordController,
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.black),
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                top: screenHeight * 0.015,
                                bottom: screenHeight * 0.015,
                                left: screenWidth * 0.02,
                                right: screenWidth * 0.02,
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Remember me
                  Row(
                    children: [
                      SizedBox(
                        height: screenHeight *
                            0.035, // Set height same as font size
                        width: screenHeight *
                            0.045, // Set width same as height to create square shape
                        child: Checkbox(
                          value: false,
                          onChanged: (value) {},
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(4.0), // Square shape
                          ),
                          side: BorderSide(color: Colors.white), // Border color
                          activeColor: Colors.white,
                        ),
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          // Handle Forgot password onPressed
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  // Login button
                  ElevatedButton(
                    onPressed: () {
                      String username = _usernameController.text;
                      String password = _passwordController.text;

                      // You can now use 'username' and 'password' variables
                      // for your login logic
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
                        borderRadius:
                            BorderRadius.circular(screenHeight * 0.04),
                        side: BorderSide(
                          color: Color(0xffa0a0a0),
                          width: 1.0,
                        ), // Thin white border
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.025,
                        horizontal: screenWidth * 0.25,
                      ),
                      // Add hover effect
                      onSurface: Colors.grey,
                      elevation: 5,
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  // Or continue with
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.040,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  // Sign in with Google
                  Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.08),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: screenWidth * 0.02,
                      ), // Adjust margin as needed
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              screenHeight * 0.04,
                            ), // Adjust as needed
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.025,
                            horizontal: screenWidth * 0.05,
                          ),
                          // Add hover effect
                          onSurface: Colors.grey,
                          elevation: 5,
                          side: BorderSide(
                            color: Color(0xffa0a0a0),
                            width: 1.0,
                          ), // Thin white border
                        ),
                        icon: Image.asset(
                          'assets/images/google.png',
                          height: screenHeight * 0.04,
                        ),
                        label: Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Don't have an account? Sign Up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02), // Add margin
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnthusiastSignUpPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff032f1f),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenHeight * 0.04),
                            side: BorderSide(
                              color: Color(0xffa0a0a0),
                              width: 1.0, // Thin white border
                            ), // Add black border
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.025,
                            horizontal: screenWidth * 0.05,
                          ),
                          // Add hover effect
                          onSurface: Colors.grey,
                          elevation: 5,
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
