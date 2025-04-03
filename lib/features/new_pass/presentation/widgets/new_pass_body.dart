import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/Code/presentation/code_view.dart';

class new_pass_body extends StatefulWidget {
  const new_pass_body({super.key});

  @override
  State<new_pass_body> createState() => _new_pass_bodyState();
}

class _new_pass_bodyState extends State<new_pass_body> {
  bool _obscurePassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 430.w,
              height: 251.h,
              color: const Color(0xFFFEFBF0),
              child: Icon(Icons.lock_open, size: 100.w, color: const Color(0xFFCA7009)),
            ),
            const SizedBox(height: 40),
            Text(
              "كلمة المرور الجديدة",
              style: GoogleFonts.almarai(
                fontSize: 25.sp,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: Text(
                  "قم بتعيين كلمة المرور الجديدة الخاصة بحسابك",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2D2525),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 85),

            // Email Input
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
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.w,
                      color: Color(0xFFA5A5A5),
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
                  hintText: 'كلمة المرور الجديدة',
                  hintStyle: GoogleFonts.almarai(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF878383),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

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
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.w,
                      color: Color(0xFFA5A5A5),
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
                  hintText: 'تأكيد كلمة المرور الجديدة',
                  hintStyle: GoogleFonts.almarai(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF878383),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const code_view()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  backgroundColor: const Color(0xFF1D75B1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                child: Text(
                  "تأكيد",
                  style: GoogleFonts.almarai(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
