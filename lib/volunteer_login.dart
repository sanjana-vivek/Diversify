import 'package:flutter/material.dart';

class VolunteerLoginPage extends StatelessWidget {
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
              'Volunteer',
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
            child: Column(
              children: [
                // Username
                GestureDetector(
                  onTap: () {
                    // Handle onTap action
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                    height: screenHeight * 0.075,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screenHeight * 0.0375),
                      color: Color(0xff062843), // Button color
                      border: Border.all(
                          color: Color(0xffa0a0a0),
                          width: 1.0), // Thin white border
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.125,
                              right: screenWidth * 0.125),
                          child: Text(
                            'Email:',
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
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.02,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Password
                GestureDetector(
                  onTap: () {
                    // Handle onTap action
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: screenHeight * 0.03),
                    height: screenHeight * 0.075,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(screenHeight * 0.0375),
                      color: Color(0xff062843), // Button color
                      border: Border.all(
                          color: Color(0xffa0a0a0),
                          width: 1.0), // Thin white border
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidth * 0.125,
                              right: screenWidth * 0.025),
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
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.02,
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Remember me
                Row(
                  children: [
                    SizedBox(
                      height:
                          screenHeight * 0.035, // Set height same as font size
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
                    Spacer(), // Add space to push "Forgot password?" to the right
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
                    // Handle Sign Up onPressed
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff032f1f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenHeight * 0.04),
                      side: BorderSide(
                          color: Color(0xffa0a0a0),
                          width: 1.0), // Thin white border
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
                            width: 1.0), // Thin white border
                      ),
                      icon: Image.asset(
                        'assets/images/google.png', // Path to your Google logo image
                        height: screenHeight * 0.04,
                        // Adjust as needed
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
                        // Handle Sign Up onPressed
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
        ],
      ),
    );
  }
}
