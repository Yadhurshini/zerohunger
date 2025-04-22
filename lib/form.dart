import 'package:flutter/material.dart';
import 'package:flutter_application_1/final.dart';
import 'colors.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body:SingleChildScrollView(
          child:Column(
            children: [
           Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops:[0.3,1.0],
                    begin:Alignment.topCenter,
                    end:Alignment.bottomCenter,

                    colors:[Colors.transparent, Colors.white])),
                  ),
    
                //color:Colors.orange.withOpacity(0.3)
             
    
            
          
            Center(
            child: Text("Hey! Welcome back",
            style:TextStyle(fontSize:23 , fontWeight: FontWeight.bold), 
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
                " Food Donation ",
                        style: TextStyle(
                         fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
         
                
            ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                    
                    
                    labelText: "✔.FIRST NAME",
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                      labelText: "✔.LAST NAME",
              
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
               ),
              
                 Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                      labelText: "✔.ADDRESS",
              
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
               ),

                Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                      labelText: "✔.NIC NO",
              
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
               ),
               Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                      labelText: "✔.PHONE NUMBER",
              
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
               ),


                Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                      labelText: "✔.LOCATION",
              
                    labelStyle: TextStyle(color: Colors.black,fontSize: 16)),
                ),
               ),

            Center(
                  child: SizedBox(
                     height: height * 0.08,
                     width: width - 30,
                  child: TextButton(
                      style: TextButton.styleFrom(
                       backgroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      
      onPressed: () {
        Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FinalScreen())
                );
      },
      child: Text(
        "SUBMIT",
        style: TextStyle(
          color: Colors.deepPurple, 
          fontSize: 20,
            ),
           ),
         ),
       ),
       ),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Text("if you already fill this form please ignore this message"),
        
          
         
        ],
       ),
        
            ],
          ),
        ),
    
  );
    
  }
}








  
  
