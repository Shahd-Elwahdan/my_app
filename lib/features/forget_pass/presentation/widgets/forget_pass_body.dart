import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/Code/presentation/code_view.dart';

class forget_pass_body extends StatelessWidget {
  const forget_pass_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 430.w,
              height: 251.h,
              color: Color(0xFFFEFBF0),
              child: Icon(Icons.mark_email_unread_outlined,size: 100.w,color: Color(0xFFCA7009),),
            ),
          SizedBox(height: 40,),
            Text(
              "هل نسيت كلمة المرور ؟",
              style: GoogleFonts.almarai(
                fontSize: 25.sp,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Container(
                width: 300.w,
                child: Text(textAlign:TextAlign.center,
                  "قم بإدخال بريدك الإلكتروني لإرسال كود التحقق",
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D2525),
                  ),
                ),
              ),
            ),
            SizedBox(height:85,),
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
          SizedBox(height: 40,),
            Container(
              width: 340.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>code_view()),
                  );
                },
                child: Text(
                  "ارسال",
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
          ],

        ),
      ),
    );
  }
}
