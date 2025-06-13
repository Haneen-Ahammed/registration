import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/welcome.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcomescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 183, 127),
      body: Center(
        child: Lottie.asset(
          'assets/canteen.json',
          width: double.infinity,
          height: 300,
        ),
      ),
    );
  }
}
