import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import 'package:untitled/pages/bottom_nav.dart';
import 'package:untitled/pages/login.dart';
import 'package:untitled/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? name, email, password;

  TextEditingController nameController = TextEditingController();
  TextEditingController mailController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();

  final _signUpState = GlobalKey<FormState>();
  registration() async {
    if (password != null && name != null && email != null) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text(
              "Registered Successfully",
              style: TextStyle(fontSize: 18),
            ),
          ));
        }
        Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNav(user: userCredential.user!)));
      } on FirebaseException catch (e) {
        if (mounted) {
          if (e.code == 'weak-password') {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Password Provided is too Weak",
                style: TextStyle(fontSize: 18),
              ),
            ));
          } else if (e.code == "email-already-in-use") {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text(
                "Account Already exists",
                style: TextStyle(fontSize: 18),
              ),
            ));
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _signUpState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/boy.jpg",
                  height: 400,
                  width: MediaQuery.of(context).size.width),
              Center(child: Text("Sign Up", style: AppWidget.semiBoldTextFieldStyle(),)),
              SizedBox(height: 20.0,),
              Text("Please Enter the details below to\n continue.", style: AppWidget.lightTextFieldStyle(),),
              SizedBox(height: 40.0,),
              Text("Name", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your Name:';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Name"),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Email", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your Email:';
                    }
                    return null;
                  },
                  controller: mailController,
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Password", style: AppWidget.semiBoldTextFieldStyle(),),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter your Password:';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
                ),
              ),
              SizedBox(height: 20.0,),
              SizedBox(height: 20,),
              GestureDetector(
                  onTap: () {
                    if (_signUpState.currentState!.validate()) {
                      setState(() {
                        name = nameController.text;
                        email = mailController.text;
                        password = passwordController.text;
                      });
                    }
                    registration();
                  },
                child: Center(
                  child: Container(
                    width: MediaQuery.of (context).size.width/2,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10) ),
                    child:Center(child: GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LogIn()));
                        },
                      child: Text("SignUP", style:TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),))),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do have an account? ", style: AppWidget.lightTextFieldStyle(),),
                    Text("Login", style: TextStyle(color: Colors.green, fontSize: 18.0, fontWeight: FontWeight.w500),),]),
            ],
          ),
        ),
      ),
    );
  }
}
