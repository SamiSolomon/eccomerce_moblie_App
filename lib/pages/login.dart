import 'package:flutter/material.dart';
import 'package:untitled/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/boy.jpg",
              height: 400,
              width: MediaQuery.of(context).size.width),
            Center(child: Text("Sign In", style: AppWidget.semiBoldTextFieldStyle(),)),
            SizedBox(height: 20.0,),
            Text("Please Enter the details below to\n continue.", style: AppWidget.lightTextFieldStyle(),),
            SizedBox(height: 40.0,),
            Text("Email", style: AppWidget.semiBoldTextFieldStyle(),),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
              ),
            ),
            SizedBox(height: 20.0,),
            Text("Password", style: AppWidget.semiBoldTextFieldStyle(),),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children:[
              Text("forget Password", style: TextStyle(color: Colors.green, fontSize: 18.0, fontWeight: FontWeight.w500),),]),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: MediaQuery.of (context).size.width/2,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10) ),
                child:Center(child: Text("Login", style:TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: AppWidget.lightTextFieldStyle(),),
                Text("Sign Up", style: TextStyle(color: Colors.green, fontSize: 18.0, fontWeight: FontWeight.w500),),]),
          ],
        ),
      ),
    );
  }
}
