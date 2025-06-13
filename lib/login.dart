import 'package:flutter/material.dart';
import 'package:registration/forgotpage.dart';
import 'package:registration/register.dart';
import 'package:registration/services.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/6681/6681204.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Login here",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 50),
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
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgotscreen()),
                  );
                },
                child: Text("forgot password", style: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  loginn(
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
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
                child: Text("Log in", style: TextStyle(fontSize: 25)),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account /", style: TextStyle(fontSize: 15)),
                  SizedBox(width: 4),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registrationscreen(),
                        ),
                      );
                    },
                    child: Text("Sign in", style: TextStyle(fontSize: 15)),
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