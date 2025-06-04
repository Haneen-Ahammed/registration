import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset('assets/canteen.json', width: 900, height: 900),
          ),
        ],
      ),
    );
  }
}
