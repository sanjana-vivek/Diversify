import 'package:flutter/material.dart';
import 'enthusiast_login.dart'; // Import the EnthusiastLoginPage
import 'volunteer_login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFirstOptionSelected = false;
  bool isSecondOptionSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Landing page.png',
              fit: BoxFit.fill,
            ),
          ),
          // Widgets positioned on top of the background image
          Positioned(
            left: MediaQuery.of(context).size.width * 0.3,
            top: MediaQuery.of(context).size.height * 0.06,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.37,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.02,
                    ),
                    width: MediaQuery.of(context).size.width * 0.37,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Image.asset(
                      'assets/images/diversify_logo.png',
                      width: MediaQuery.of(context).size.width * 0.37,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.height * 0.3,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.92,
              height: MediaQuery.of(context).size.height * 0.5,
              child: ClipRect(
                child: Stack(
                  children: [
                    // Background for the options box
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0x1c58d9ca),
                        ),
                      ),
                    ),
                    // Options inside the box
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.04,
                      top: MediaQuery.of(context).size.height * 0.15,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.87,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // First option button with bottom margin
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isFirstOptionSelected = true;
                                  isSecondOptionSelected = false;
                                });
                                // Navigate to EnthusiastLoginPage
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EnthusiastLoginPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.075,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 8.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.white),
                                      color: isFirstOptionSelected
                                          ? Color(0xff1fab83)
                                          : Color(0xff0d364b)),
                                  child: Center(
                                    child: Text(
                                      'Enthusiast',
                                      style: TextStyle(
                                        fontFamily: 'Martel',
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Second option button with increased top margin
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSecondOptionSelected = true;
                                  isFirstOptionSelected = false;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VolunteerLoginPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.085,
                                child: Container(
                                  margin: EdgeInsets.only(top: 16.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: Colors.white),
                                      color: isSecondOptionSelected
                                          ? Color(0xff1fab83)
                                          : Color(0xff0d364b)),
                                  child: Center(
                                    child: Text(
                                      'Volunteer/In service?',
                                      style: TextStyle(
                                        fontFamily: 'Martel',
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.06,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.20,
                      top: MediaQuery.of(context).size.height * 0.03,
                      child: Align(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.76,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: Text(
                            'What’s your role?',
                            style: TextStyle(
                              fontFamily: 'Josefin Sans',
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.070,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
