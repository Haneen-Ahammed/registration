import 'package:flutter/material.dart';
import 'package:registration/services.dart';

class Forgotscreen extends StatefulWidget {
  const Forgotscreen({super.key});

  @override
  State<Forgotscreen> createState() => _ForgotscreenState();
}

class _ForgotscreenState extends State<Forgotscreen> {
  TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLOEz-0alUSFHC_QZzpaZf5a-wrEJ9nu95RA&s",
              ),
              SizedBox(height: 25),
              Text(
                "Recover Password",
                style: TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "No worries!Enter your email and we will send you a verification code",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 45),
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
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  resetlink(email: emailcontroller.text, context: context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  minimumSize: Size(250, 50),
                ),
                child: Text(
                  "Send Recovery Code",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
