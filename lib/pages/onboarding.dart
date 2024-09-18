import 'package:flutter/material.dart';
import 'package:untitled/widget/widget_support.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 235, 231),
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Image.asset(
            'images/headphone.PNG',
            width: 600,   // Specify the width
            height: 400,  // Specify the height
            fit: BoxFit.fill, // You can also use BoxFit.contain, BoxFit.fill, etc.
          ),
            Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text(
            "Explore\nThe best\nProducts" ,
            style : TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              fontWeight: FontWeight.bold ),
                    ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin : EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Text(
                    "Next" ,
                    style :AppWidget.boldTextFieldStyle(),
                  ),

                ),
              ],
            )
      ],) ,),)
    );
  }
}
