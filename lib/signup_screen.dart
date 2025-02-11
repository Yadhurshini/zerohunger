import 'package:flutter/material.dart';

import 'package:flutter_application_1/login_screen.dart';

import 'colors.dart';
import 'constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return Scaffold(
         backgroundColor: Colors.white, 
         body:SingleChildScrollView(
           child:Form(
            key: SignupScreen.formKey,
             child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[Image.asset(
              igImage,
              height: height * 0.45,
              width: width,
              fit:BoxFit.cover,
            ),
           
            Container(
                height: height *0.45,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops:[0.3,1.0],
                    begin:Alignment.topCenter,
                    end:Alignment.bottomCenter,

                    colors:[Colors.transparent, Colors.white])),
                  ),
                
                //color:Colors.orange.withOpacity(0.3)
             
              ],
            ),
          
            Center(
            child: Text(appName,
            style:TextStyle(fontSize:23 , fontWeight: FontWeight.bold), 
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
      border: Border(left:BorderSide(color: primaryColor,width:5)),
    ),
            child: Text(
                "   Register ",
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
                  validator: (userName){
                    if(userName == null || userName.isEmpty){
                        return "please enter your username";
                    }
                    else{
                      return null;
                    }
                  },
                   
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor)),
                    
                    prefixIcon: Icon(Icons.verified_user, color:primaryColor),
                    labelText: "USER NAME",
                    labelStyle: TextStyle(color: primaryColor,fontSize: 16)),
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
                      borderSide: BorderSide(color: primaryColor)),
                    
                    prefixIcon: Icon(Icons.email, color:primaryColor),
                    labelText: "EMAIL ADDRESS",
              
                    labelStyle: TextStyle(color: primaryColor,fontSize: 16)),
                ),
               ),
              
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  obscureText: true, 
                  validator: (Password) {
                    if (Password == null || Password.isEmpty) {
                      return "Please enter your password";
                    } else if (Password.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor)),
                    
                    prefixIcon: Icon(Icons.email, color:primaryColor),
                    labelText: "PASSWORD",
              
                    labelStyle: TextStyle(color: primaryColor,fontSize: 16)),
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
          if (SignupScreen.formKey.currentState?.validate() ?? false){
         Navigator.push(
           context,
           MaterialPageRoute(builder:(context) => (LoginScreen())),
         );
          }
      },
      child: Text(
        "Register",
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
         Text("Do you have an account?"),
         TextButton(onPressed:() {
          Navigator.pop(context);
         },
          child:Text("Login to account"))
        ],
       ),
        
 ],
  ),
    )
         )
    );
         
  }
  
 
}







