import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:myapp/features/splash/presentation/splash_view.dart'; 
import 'package:myapp/Responsive.dart'; 
import 'package:myapp/manage/services/services.dart'; 
import 'package:myapp/manage/cubit/sign_up_cubit.dart';
import 'package:myapp/features/login/presentation/Login_view.dart'; 
import 'package:myapp/features/new_acc/presentation/widgets/new_acc_body.dart'; 

void main() {
  runApp(
    Responsive.init( 
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(ApiService()), 
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
      body: SplashView(), 
    );
  }
}

