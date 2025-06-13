import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:registration/home.dart';

Future<void> signup({
  required String username,
  required String email,
  required String password,
  required String confirmpassword,
  required BuildContext context,
}) async {
  try {
    UserCredential userdetails = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userdetails.user;
    await FirebaseFirestore.instance.collection("datas").doc(user?.uid).set({
      "name": username,
      "email": email,
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Account created successfully!")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> loginn({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      // ignore: use_build_context_synchronously
      context,
    ).showSnackBar(SnackBar(content: Text("Login Successfull")));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepagescreen()),
    );
  } catch (e) {
    ScaffoldMessenger.of(
      // ignore: use_build_context_synchronously
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> resetlink({
  required String email,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    ScaffoldMessenger.of(
      // ignore: use_build_context_synchronously
      context,
    ).showSnackBar(SnackBar(content: Text("password reset Successfull")));
  } catch (e) {
    ScaffoldMessenger.of(
      // ignore: use_build_context_synchronously
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
