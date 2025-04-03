import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // BlocConsumer
import 'package:myapp/features/splash/presentation/splash_view.dart'; // Splash View
import 'package:myapp/Responsive.dart'; // Responsive
import 'package:myapp/manage/services/services.dart'; // ApiService
import 'package:myapp/manage/cubit/sign_up_cubit.dart'; // SignupCubit
import 'package:myapp/features/login/presentation/Login_view.dart'; // Login View
import 'package:myapp/features/new_acc/presentation/widgets/new_acc_body.dart'; // Your Signup Widget

void main() {
  runApp(
    Responsive.init( // Ensures screen responsiveness
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(ApiService()), // Providing SignupCubit here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView(), // This is where you initially show the SplashView
    );
  }
}

