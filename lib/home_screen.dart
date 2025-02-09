import 'package:flutter/material.dart';
import 'package:flutter_application_1/donate.dart';

import 'colors.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Stack(
              children: <Widget>[
                Image.asset(
                  jpImage,
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
            Center(
              child: Text(
                appName,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Zero Hunger, part of the United Nations' Sustainable Development Goals, aims to eliminate hunger, ensure food security, improve nutrition, and promote sustainable agriculture by 2030. Despite advancements, millions still face hunger and malnutrition worldwide. This initiative focuses on equitable access to nutritious food, reducing food waste, supporting small-scale farmers, and creating sustainable food systems. Achieving this goal requires global collaboration to build a world where everyone has enough to eat.",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                       
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: height * 0.08,
                width: width - 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DonateScreen()),
                     );
                  },
                  child: Text(
                    "JOIN US",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle, color: primaryColor),
                    title: Text("My Profile"),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.foundation_sharp, color: primaryColor),
                    title: Text("Funds"),
                    onTap: () {
                     
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: primaryColor),
                    title: Text("Settings"),
                    onTap: () {
                      
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: height * 0.08,
                width: width - 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  onPressed: () {
                     
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
