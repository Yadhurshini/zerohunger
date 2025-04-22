import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/signup_screen.dart';
import 'colors.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } catch (e) {
    // ignore: avoid_print
    print(e.toString());
  }
}

@override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: LoginScreen.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    bgImage,
                    height: height * 0.45,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: height * 0.45,
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
              Center(
                child: Text(
                  slogan,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        primaryColor.withOpacity(0.3),
                        Colors.transparent,
                      ],
                    ),
                    border: Border(left: BorderSide(color: primaryColor, width: 5)),
                  ),
                  child: Text(
                    "   $loginString ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return "Please enter your email";
                    } else if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(email)) {
                      return "It's not a valid Email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    prefixIcon: Icon(Icons.email, color: primaryColor),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true, 
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return "Please enter your password";
                    } else if (password.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    prefixIcon: Icon(Icons.lock_open, color: primaryColor),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: primaryColor, fontSize: 16),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Implement forgot password functionality here
                  },
                  child: Text(forgotText),
                ),
              ),
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
                      if (LoginScreen.formKey.currentState?.validate() ?? false) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                    child: Text(
                      "Login to account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text("Create Account"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}