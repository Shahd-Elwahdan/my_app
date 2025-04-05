import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/home/presentation/home_view.dart';

class info_body extends StatefulWidget {
  const info_body({super.key});
  @override
  State<info_body> createState() => _info_bodyState();
}
class _info_bodyState extends State<info_body> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 35.h),
            Icon(Icons.person, size: 200.w, color: const Color(0xFFCA7009)),
            Text(
              "إستكمال البيانات",
              style: GoogleFonts.almarai(
                fontSize: 25.sp,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 300.w,
              child: Text(
                "قم بإستكمال بياناتك الشخصية لتتمكن من تسجيل حسابك",
                textAlign: TextAlign.center,
                style: GoogleFonts.almarai(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF2D2525),
                ),
              ),
            ),
            SizedBox(height: 7.h),
            buildInputField("الاسم الأول"),
            SizedBox(height: 7.h),
            buildInputField("الاسم الأخير"),
            SizedBox(height: 7.h),
            buildInputField("رقم الجوال", keyboardType: TextInputType.phone),
            SizedBox(height: 7.h),
            buildPasswordField("كلمة المرور", true),
            SizedBox(height: 7.h),
            buildPasswordField("تأكيد كلمة المرور", false),
            SizedBox(height: 20.h),

            SizedBox(
              width: 340.w,
              height: 60.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home_view()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1D75B1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                child: Text(
                  "تأكيد",
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  Widget buildInputField(String hintText, {TextInputType keyboardType = TextInputType.text}) {
    return Container(
      width: 340.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: TextField(
        keyboardType: keyboardType,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          hintText: hintText,
          hintStyle: GoogleFonts.almarai(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF878383),
          ),
        ),
      ),
    );
  }

  
  Widget buildPasswordField(String hintText, bool isPassword) {
    return Container(
      width: 340.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: TextField(
        obscureText: isPassword ? _obscurePassword : _obscureConfirmPassword,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Icon(Icons.lock_outline, size: 20.w, color: Color(0xFF878383)),
          prefixIcon: IconButton(
            icon: Icon(
              isPassword ? (_obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined) :
              (_obscureConfirmPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
              size: 20.w,color: Color(0xFF878383),
            ),
            onPressed: () {
              setState(() {
                if (isPassword) {
                  _obscurePassword = !_obscurePassword;
                } else {
                  _obscureConfirmPassword = !_obscureConfirmPassword;
                }
              });
            },
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          hintText: hintText,
          hintStyle: GoogleFonts.almarai(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
            color: Color(0xFF878383),
          ),
        ),
      ),
    );
  }
}

