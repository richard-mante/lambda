import 'package:flutter/material.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }
  void _navigateToHome()async {
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Center(
        child: Text(
          'lambda',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 24,
            letterSpacing: .5,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.green[700],
    );
  }
}

