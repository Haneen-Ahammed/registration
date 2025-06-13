import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:registration/services.dart';

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create an account",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Create an account so can explore",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 25),
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 166, 225, 254),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: " Username",
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 166, 225, 254),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: "user@gmial.com",
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 166, 225, 254),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                  prefixIcon: Icon(Icons.password_rounded),
                  hintText: "password",
                ),
              ),
              SizedBox(height: 25),
              TextField(
                controller: confirmpasswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 166, 225, 254),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  prefixIcon: Icon(Icons.password_outlined),
                  hintText: "Confirmpassword",
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  signup(
                    username: namecontroller.text,
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                    confirmpassword: confirmpasswordcontroller.text,
                    context: context,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(25),
                  ),
                  minimumSize: Size(250, 50),
                ),
                child: Text("Sign in", style: TextStyle(fontSize: 25)),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account /",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscreen()),
                      );
                    },
                    child: Text("Log in", style: TextStyle(fontSize: 15)),
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
