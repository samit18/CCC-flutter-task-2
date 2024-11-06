import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled1/firebase_services/splash_services.dart';
import 'package:untitled1/screens/login_screen.dart'; // Import Loginscreen if it exists

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin(context);

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()), // Ensure Loginscreen is defined
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text(
          'Firebase Tutorials',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

// Placeholder for Loginscreen if not defined
class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: const Center(
        child: Text('Welcome to the Login Screen'),
      ),
    );
  }
}
