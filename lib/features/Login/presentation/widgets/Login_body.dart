import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/forget_pass/presentation/forget_pass_view.dart';
import 'package:myapp/features/new_acc/presentation/new_acc_view.dart';

class Login_body extends StatefulWidget {
  const Login_body({super.key});

  @override
  State<Login_body> createState() => _Login_bodyState();
}

class _Login_bodyState extends State<Login_body> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Container(
              width: 200.w,
              height: 200.h,
              child: Image.asset("assets/image2.png"),
            ),
            Text(
              "تسجيل الدخول",
              style: GoogleFonts.almarai(
                fontSize: 25.sp,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "قم بإدخال بريدك الإلكتروني لتسجيل الدخول",
              style: GoogleFonts.almarai(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF878383),
              ),
            ),
            SizedBox(height: 25.h),
            Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: TextField(
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
            SizedBox(height: 30.h),
            Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: TextField(
                obscureText: _obscurePassword,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.lock_outlined,
                    size: 20.w,
                    color: Color(0xFF292D32),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      size: 20.w,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  hintText: 'أدخل كلمة المرور',
                  hintStyle: GoogleFonts.almarai(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF878383),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            GestureDetector(
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => forget_pass_view()),
              );},
              child: Text(
                "هل نسيت كلمة المرور ؟",
                style: GoogleFonts.almarai(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF25170B),
                ),
              ),
            ),
            SizedBox(height: 35.h),
            Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "الدخول",
                  style: GoogleFonts.almarai(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  backgroundColor: Color(0xFF1D75B1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),

            Text(
              "ليس لديك حساب ؟",
              style: GoogleFonts.almarai(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF878383),
              ),
            ),
            SizedBox(height: 15.h),
            GestureDetector(
              child: Container(
                width: 340.w, 
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon:
                      Icon(Icons.arrow_back), 
                      iconSize: 20.w,
                      color: const Color(0xFF1D75B1),
                      padding: EdgeInsets.zero, 
                      constraints: BoxConstraints(), 
                      onPressed: () {
                        
                      },
                    ),
                    Text(
                      textAlign: TextAlign.right,
                      "تسجيل حساب جديد",
                      style: GoogleFonts.almarai(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1D75B1),
                      ),
                ),

                  ],
                ),
              ),
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new_acc_view()),
              );
              },
            ),
          ],
        ),
      ),
    );
  }
}
