import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/Code/presentation/code2_view.dart';
import 'package:myapp/features/Code/presentation/code_view.dart';
import 'package:myapp/features/Login/presentation/Login_view.dart';
import 'package:myapp/manage/services/services.dart'; 
import 'package:myapp/manage/cubit/sign_up_cubit.dart'; 
import 'package:myapp/manage/cubit/sign_up_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class new_acc_body extends StatefulWidget {
  const new_acc_body({Key? key}) : super(key: key);

  @override
  _new_acc_bodyState createState() => _new_acc_bodyState();
}

class _new_acc_bodyState extends State<new_acc_body> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            // OTP sent successfully, navigate to the OTP verification screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const code2_view()),
            );
          } else if (state is SignupFailure) {
            // Show an error message if OTP sending fails
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return Center(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Container(
                  width: 200.w,
                  height: 200.h,
                  child: Image.asset("assets/image2.png"),
                ),
                Text(
                  "تسجيل حساب جديد",
                  style: GoogleFonts.almarai(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 270.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    "قم بإدخال بريدك الإلكتروني لتسجيل حساب جديد",
                    style: GoogleFonts.almarai(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF878383),
                    ),
                  ),
                ),
                SizedBox(height: 35.h),

                // Email Input
                Container(
                  width: 340.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F7F7),
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: TextField(
                    controller: emailController,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        size: 20.w,
                        color: Color(0xFF292D32),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                      hintText: 'أدخل البريد الإلكتروني',
                      hintStyle: GoogleFonts.almarai(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF878383),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25.h),
                Container(
                  width: 340.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailController.text.isNotEmpty) {
                        // Call the Signup API to send OTP when the button is pressed
                        context.read<SignupCubit>().sendOtp(emailController.text);
                      } else {
                        // Show error message if email is empty
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("الرجاء إدخال البريد الإلكتروني")),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      backgroundColor: Color(0xFF1D75B1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.r),
                      ),
                    ),
                    child: state is SignupLoading
                        ? CircularProgressIndicator(color: Colors.white)
                        : Text(
                      "تسجيل",
                      style: GoogleFonts.almarai(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 170.h),

               
                Text(
                  textAlign: TextAlign.center,
                  "لديك حساب بالفعل ؟",
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF878383),
                  ),
                ),
                SizedBox(
                  width: 340.w,
                  child: GestureDetector(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 20.w,
                            color: Color(0xFF1D75B1),
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              // Add signup navigation here
                            },
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            "تسجيل الدخول",
                            style: GoogleFonts.almarai(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF1D75B1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_view()),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
