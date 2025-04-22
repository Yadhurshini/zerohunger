import 'package:flutter/material.dart';
import 'constants.dart';

class FinalScreen extends StatelessWidget {
  const FinalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Displaying the image with gradient overlay
            Stack(
              children: <Widget>[
                Image.asset(
                  piImage,
                  height: height * 0.4,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [0.3, 1.0],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.white],
                    ),
                  ),
                ),
              ],
            ),
            // Adding space between the image and text
            SizedBox(height: 20),  // You can adjust this value to increase or decrease the space
            // Displaying the app name
            Center(
              child: Text(
                appName,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            // Adding more space before the success message
            SizedBox(height: 10),  // Adds space between the app name and message
            // Displaying the success message
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Your record has been successfully completed at the Food and Agriculture Organization of the United Nations. Thank you for joining us.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
            // Adding space between text and the second image
            SizedBox(height: 20),
            // Displaying the second image after the text
            Center(
              child: Image.asset(
                dwImage,
                height: height * 0.4,
                width: width,
                fit: BoxFit.cover,
              ),
            ),
          ],
          
        ),
      ),
    );
  }
}
