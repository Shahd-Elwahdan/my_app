import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/features/Login/presentation/Login_view.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  double _size = 50.w; 
  double _opacity = 0.0; 

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _size = 200.w; 
        _opacity = 1.0; 
      });
    });

    // Navigate to login page after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login_view()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF035B97), Color(0xFF1D75B1)], 
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(seconds: 2),
            opacity: _opacity,
            child: AnimatedContainer(
              duration: const Duration(seconds: 2),
              curve: Curves.easeOutBack,
              width: _size,
              height: _size,
              child: Image.asset("assets/Mask Group.png"),
            ),
          ),
        ),
      ),
    );
  }
}


