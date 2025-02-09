import 'package:flutter/material.dart';
import 'package:flutter_application_1/form.dart';
import 'constants.dart';
import 'colors.dart';


class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              ipImage,
              height: height * 0.45,
              width: width,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // Food Donation Box (Tappable)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormScreen())
                );
              },
              child: buildTopicBox(width, "Food Donation"),
            ),
            const SizedBox(height: 20),

            // Other Topics (You can add navigation for them similarly)
            buildTopicBox(width, "Agriculture and Farmer"),
            const SizedBox(height: 20),
            buildTopicBox(width, "Food Supply Chain & Marketplace"),
            const SizedBox(height: 20),
            buildTopicBox(width, "Nutrition Tracking"),
            const SizedBox(height: 20),

            // Log Out Button
            Center(
              child: SizedBox(
                height: height * 0.08,
                width: width - 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  // Function to create a topic box
  Widget buildTopicBox(double width, String text) {
    return Container(
      height: 90,
      width: width - 20,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
            color: Colors.black26,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
