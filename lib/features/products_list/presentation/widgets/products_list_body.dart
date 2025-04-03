import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/filtering/presentation/filtering_view.dart';
import 'package:myapp/features/offer_price/presentation/offer_price_view.dart';
import 'package:myapp/features/offer_price/presentation/widgets/offer_price_body.dart';
import 'package:myapp/features/product_info/presentation/product_info_view.dart';

class products_list_body extends StatelessWidget {
  const products_list_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.filter_alt_outlined, color: Colors.black,), // Filter icon
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => filtering_view()));
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'مكيف جداري',
              style: GoogleFonts.almarai(
                  fontSize: 18.sp, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_rounded, color: Color(0xFF1D75B1)),
            onPressed: () {Navigator.pop(context);},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.6,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => product_info_view()));
            },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5.r),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10.h),
                    Image.asset('assets/img_2.png',
                        width: 130.w, height: 70.h, fit: BoxFit.contain),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        children: [
                          Text("مكيف كاسيت جري 1.5 حصان",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.almarai(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              SizedBox(width: 25.w,),
                              Icon(Icons.star_rate_outlined, color: Colors.grey),
                              Icon(Icons.star_rate_outlined, color: Colors.grey),
                              Icon(Icons.star_rate_outlined, color: Colors.grey),
                              Icon(Icons.star_rate_outlined, color: Colors.grey),
                              Icon(Icons.star_rate_outlined, color: Colors.grey),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text("هناك خصم متاح لفترة محدودة",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.almarai(
                                  fontSize: 12.sp, color: Colors.grey)),
                          SizedBox(height: 5.h),
                          Text("ر.س 2,750.00",
                              style: GoogleFonts.almarai(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold, color: Color(0xFFCA7009))),
                        ],
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.favorite_border, color: Colors.grey, size: 20),
                        Container(
                          height: 28.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF1D75B1), // Border color
                              width: .8.w, // Border width
                            ),
                            borderRadius: BorderRadius.circular(12.r), // Optional: Rounded corners
                          ),
                          child: Row(
                            children: [
                              Text(" أضف للعربة ",
                                  style: GoogleFonts.almarai(
                                      fontSize: 11.sp, color: Color(0xFF1D75B1),fontWeight: FontWeight.w700)),
                              SizedBox(width: 4.w),
                              Icon(Icons.shopping_cart, color: Color(0xFF1D75B1), size: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => offer_price_view()));
        },
        icon: const Icon(Icons.add, color: Colors.white),
        label: Text(
          'طلب عرض سعر',
          style: GoogleFonts.almarai(fontSize: 16.sp, color: Colors.white),
        ),
        backgroundColor: Color(0xFF1D75B1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        elevation: 5,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
