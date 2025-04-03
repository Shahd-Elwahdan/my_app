import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class offer_price_body extends StatelessWidget {
  const offer_price_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1D75B1)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "طلب عرض سعر",
          style: GoogleFonts.almarai(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "يمكنك إرسال طلب عرض سعر خاص",
              style: GoogleFonts.almarai(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40.h),
            buildInputField("الاسم الأول"),
            SizedBox(height: 10.h),
            buildInputField("الاسم الأخير"),
            SizedBox(height: 10.h),
            buildInputField("البريد الإلكتروني", keyboardType: TextInputType.emailAddress),
            SizedBox(height: 10.h),
            buildInputField("رقم الجوال", keyboardType: TextInputType.phone),
            SizedBox(height: 10.h),
            buildDropdownField(),
            SizedBox(height: 10.h),
            buildMessageField("نص الرسالة"),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1D75B1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                ),
                child: Text(
                  "إرسال الطلب",
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
    return TextField(
      keyboardType: keyboardType,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF7F7F7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.r),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        hintText: hintText,
        hintStyle: GoogleFonts.almarai(fontSize: 16.sp, color: Colors.grey),
      ),
    );
  }

  Widget buildDropdownField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          items: const [
            DropdownMenuItem(value: "1", child: Text("أعمال الصيانة")),
            DropdownMenuItem(value: "2", child: Text("أعمال DUCT")),
            DropdownMenuItem(value: "3", child: Text("المشاريع")),
            DropdownMenuItem(value: "4", child: Text("المنتجات")),
          ],
          onChanged: (value) {},
          hint: Text(
            "اختر فئة الخدمة",
            style: GoogleFonts.almarai(fontSize: 16.sp, color: Colors.grey),
          ),
          isExpanded: true,
        ),
      ),
    );
  }

  Widget buildMessageField(String hintText) {
    return TextField(
      maxLines:9,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFF7F7F7),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        hintText: hintText,
        hintStyle: GoogleFonts.almarai(fontSize: 16.sp, color: Colors.grey),
      ),
    );
  }
}
