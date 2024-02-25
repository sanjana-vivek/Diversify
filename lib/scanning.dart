import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ScanningPage extends StatefulWidget {
  final String username;
  final String password;

  const ScanningPage({
    Key? key,
    required this.username,
    required this.password,
  }) : super(key: key);

  @override
  State<ScanningPage> createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  File? imageFile;
  bool cameraPermissionGranted = false;

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
          // Scanning area
          Padding(
            padding: EdgeInsets.fromLTRB(
                12.0, screenHeight * 0.1, 12.0, 0), // Adjusted padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.5, // Decrease width by 50%
                  height: screenHeight * 0.25, // Decrease height by 25%
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: cameraPermissionGranted
                        ? Colors.white
                        : Colors.transparent,
                    border: Border.all(width: 4, color: Colors.white),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: cameraPermissionGranted
                      ? imageFile != null
                          ? Image.file(
                              imageFile!,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            )
                          : null // Display nothing if no image is selected
                      : null, // Hide content if camera permission is not granted
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * 0.05), // Adjusted margin
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await _requestCameraPermission();
                          if (cameraPermissionGranted) {
                            getImage(source: ImageSource.camera);
                          }
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
                            horizontal: screenWidth * 0.050,
                          ),
                          // Add hover effect
                          onSurface: Colors.grey,
                          elevation: 5,
                        ),
                        child: Text(
                          'Capture Image',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.05), // Add margin
                      ElevatedButton(
                        onPressed: () async {
                          await _requestCameraPermission();
                          if (cameraPermissionGranted) {
                            getImage(source: ImageSource.gallery);
                          }
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
                            horizontal: screenWidth * 0.050,
                          ),
                          // Add hover effect
                          onSurface: Colors.grey,
                          elevation: 5,
                        ),
                        child: Text(
                          'Select Image',
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Displaying email and password
                Text(
                  'Username: ${widget.username}',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Password: ${widget.password}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _requestCameraPermission() async {
    // Here you can request camera permission using your preferred method
    // For simplicity, this example assumes permission is always granted
    cameraPermissionGranted = true;
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 640,
      maxHeight: 480,
      imageQuality: 70,
    );

    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ScanningPage extends StatefulWidget {
//   final String username;
//   final String password;

//   const ScanningPage({
//     Key? key,
//     required this.username,
//     required this.password,
//   }) : super(key: key);

//   @override
//   State<ScanningPage> createState() => _ScanningPageState();
// }

// class _ScanningPageState extends State<ScanningPage> {
//   File? imageFile;
//   bool cameraPermissionGranted = false;

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background image
//           Positioned.fill(
//             child: Image.asset(
//               'assets/images/main_background.png',
//               fit: BoxFit.fill,
//             ),
//           ),
//           // Scanning area
//           Positioned(
//             top: screenHeight * 0.05, // Adjust as needed
//             right: screenWidth * 0.05, // Adjust as needed
//             child: Image.asset(
//               'assets/images/profile.png',
//               width: 50, // Adjust width as needed
//               height: 50, // Adjust height as needed
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(screenWidth * 0.03), // 3% of screen width
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: screenWidth * 0.5, // 50% of screen width
//                   height: screenHeight * 0.25, // 25% of screen height
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color: cameraPermissionGranted
//                         ? Colors.white
//                         : Colors.transparent,
//                     border: Border.all(
//                         width: screenWidth * 0.01,
//                         color: Colors.black), // 1% of screen width
//                     borderRadius: BorderRadius.circular(
//                         screenWidth * 0.02), // 2% of screen width
//                   ),
//                   child: cameraPermissionGranted
//                       ? imageFile != null
//                           ? Image.file(
//                               imageFile!,
//                               width: double.infinity,
//                               height: double.infinity,
//                               fit: BoxFit.cover,
//                             )
//                           : null // Display nothing if no image is selected
//                       : null, // Hide content if camera permission is not granted
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.04, // 4% of screen height
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () async {
//                         await _requestCameraPermission();
//                         if (cameraPermissionGranted) {
//                           getImage(source: ImageSource.camera);
//                         }
//                       },
//                       child: const Text('Capture Image'),
//                     ),
//                     SizedBox(
//                       width: screenWidth * 0.04, // 4% of screen width
//                     ),
//                     ElevatedButton(
//                       onPressed: () async {
//                         await _requestCameraPermission();
//                         if (cameraPermissionGranted) {
//                           getImage(source: ImageSource.gallery);
//                         }
//                       },
//                       child: const Text('Select Image'),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: screenHeight * 0.04, // 4% of screen height
//                 ),
//                 // Displaying email and password
//                 Text(
//                   'Username: ${widget.username}',
//                   style: TextStyle(
//                       fontSize: screenHeight * 0.02), // 2% of screen height
//                 ),
//                 Text(
//                   'Password: ${widget.password}',
//                   style: TextStyle(
//                       fontSize: screenHeight * 0.02), // 2% of screen height
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _requestCameraPermission() async {
//     // Here you can request camera permission using your preferred method
//     // For simplicity, this example assumes permission is always granted
//     cameraPermissionGranted = true;
//   }

//   void getImage({required ImageSource source}) async {
//     final file = await ImagePicker().pickImage(
//       source: source,
//       maxWidth: 640,
//       maxHeight: 480,
//       imageQuality: 70,
//     );

//     if (file?.path != null) {
//       setState(() {
//         imageFile = File(file!.path);
//       });
//     }
//   }
// }

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerWidget extends StatefulWidget {
//   const ImagePickerWidget({Key? key}) : super(key: key);

//   @override
//   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// }

// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? imageFile;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (imageFile != null)
//             Container(
//               width: 640,
//               height: 480,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 image: DecorationImage(
//                   image: FileImage(imageFile!),
//                   fit: BoxFit.cover,
//                 ),
//                 border: Border.all(width: 8, color: Colors.black),
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//             )
//           else
//             Container(
//               width: 640,
//               height: 480,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: Colors.grey,
//                 border: Border.all(width: 8, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12.0),
//               ),
//               child: const Text(
//                 'Image should appear here',
//                 style: TextStyle(fontSize: 26),
//               ),
//             ),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             children: [
//               Expanded(
//                 child: ElevatedButton(
//                     onPressed: () => getImage(source: ImageSource.camera),
//                     child: const Text('Capture Image',
//                         style: TextStyle(fontSize: 18))),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: ElevatedButton(
//                     onPressed: () => getImage(source: ImageSource.gallery),
//                     child: const Text('Select Image',
//                         style: TextStyle(fontSize: 18))),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void getImage({required ImageSource source}) async {
//     final file = await ImagePicker().pickImage(
//         source: source, maxWidth: 640, maxHeight: 480, imageQuality: 70);

//     if (file?.path != null) {
//       setState(() {
//         imageFile = File(file!.path);
//       });
//     }
//   }
// }
