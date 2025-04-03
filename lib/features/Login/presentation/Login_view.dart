import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/features/Login/presentation/widgets/Login_body.dart';

class Login_view extends StatelessWidget {
  const Login_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Login_body()
    );
  }
}
