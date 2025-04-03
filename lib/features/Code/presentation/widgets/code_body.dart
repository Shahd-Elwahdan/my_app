import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/new_pass/presentation/new_pass_view.dart';
class code_body extends StatelessWidget {
  const code_body({super.key});

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
              child: Row(
                children: [
                  SizedBox(width: 65,),
                  Icon(Icons.emergency_sharp,size: 85.w,color: Color(0xFFCA7009),
                  ),Icon(Icons.emergency_sharp,size: 85.w,color: Color(0xFFE1C18F),
                  ),
              Icon(Icons.emergency_sharp,size: 85.w,color: Color(0xFFCA7009),)],
              ),
            ),
            SizedBox(height: 40,),
            Text(
              "كود التحقق",
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
                  "قم بكتابة كود التحقق المكون من 5 أرقام الذي تم إرساله إليك عبر البريد الإلكتروني",
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D2525),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Center(
              child: Container(
                width: 300.w,
                child: Text(textAlign:TextAlign.center,
                  "Ahmedmosad452@gmail.com",
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF2D2525),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1, // Allow only one digit per box
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Make text color black
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      counterText: "", // Hide the character counter
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height:50,),
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
                    MaterialPageRoute(builder: (context) =>new_pass_view()),
                  );
                },
                child: Text(
                  "تحقق",
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
              " لم يتم إرسال كود التحقق ؟",
              style: GoogleFonts.almarai(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFF929292),
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              child: Column(
                children: [
                Icon(Icons.refresh,size: 23.w,color: Color(0xFF1D75B1),),
                  Text(
                    textAlign: TextAlign.right,
                    "أرسل الكود مرة أخرى",
                    style: GoogleFonts.almarai(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1D75B1), // Blue color to match design
                    ),
                  ),
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
