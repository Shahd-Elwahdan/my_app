import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class result_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نتائج البحث', style: GoogleFonts.almarai(color: Colors.black, fontWeight: FontWeight.w800)),
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Color(0xFF1D75B1),)),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "تكييف جري 15 حصان",
              style: GoogleFonts.almarai(
                fontSize: 14.sp,
                color: Color(0xFF25170B),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/img_8.png',
                            height: 80,
                          ),
                        ),
                        Text('مكيف كاسيت جري 1.5 حصان',
                            style: GoogleFonts.almarai(fontSize: 16, fontWeight: FontWeight.bold),textAlign:TextAlign.right,),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/img_7.png"),
                          ],
                        ),

                        Row(
                          children: [
                            SizedBox(width: 50.w,),
                            Text('(4.3)',
                                style: GoogleFonts.almarai(fontSize: 14, color: Color(0xFFCA7009))),
                           SizedBox(width: 7.w,),
                            Row(

                              children: List.generate(
                                  5,
                                      (index) => Icon(Icons.star,
                                      size: 16, color: Color(0xFFCA7009))),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                          child: Text(
                            'متاح بشحنه سريعة منذ زمن طويل, ومن المحتمل نفاذه قريباً',
                            style: GoogleFonts.almarai(fontSize: 12, color: Colors.grey),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text('رسـ 2,750.00',
                            style: GoogleFonts.almarai(
                                fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFCA7009)),textAlign: TextAlign.right,),
                        SizedBox(height: 10,),
                        Row(

                          children: [
                            SizedBox(width: 10.w,),
                            Icon(Icons.favorite_border, color: Colors.grey, size: 20),
                            SizedBox(width: 37.w,),
                            Container(
                              height: 28.h,
                              width: 90.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFF1D75B1), // Border color
                                  width: .8.w, 
                                ),
                                borderRadius: BorderRadius.circular(12.r), 
                              ),
                              child: Row(
                                children: [
                                  Text(" أضف للعربة ",
                                      style: GoogleFonts.almarai(
                                          fontSize: 11.sp,
                                          color: Color(0xFF1D75B1),
                                          fontWeight: FontWeight.w700)),
                                  SizedBox(width: 4.w),
                                  Icon(Icons.shopping_cart, color: Color(0xFF1D75B1), size: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
