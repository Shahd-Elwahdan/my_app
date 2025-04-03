import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/features/forget_pass/presentation/widgets/forget_pass_body.dart';

class forget_pass_view extends StatelessWidget {
  const forget_pass_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: forget_pass_body(),
    );
  }
}
