import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class product_info_body extends StatefulWidget {
  const product_info_body({super.key});

  @override
  _product_info_bodyState createState() => _product_info_bodyState();
}

class _product_info_bodyState extends State<product_info_body> {
  final List<String> productImages = [
    'assets/img_8.png',
    'assets/img_1.png',
    'assets/img_2.png',
    'assets/img_3.png',
  ];

  String selectedImage = 'assets/img_8.png';
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "تفاصيل المنتج",
          style: GoogleFonts.almarai(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(selectedImage, height: 150.h)),
              SizedBox(height: 10.h),

              SizedBox(
                height: 70.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedImage = productImages[index];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: selectedImage == productImages[index]
                                ? Colors.blue
                                : Colors.transparent,
                            width: 2.w,
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Image.asset(
                          productImages[index],
                          height: 100.h,
                          width: 100.w,
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 40.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مكيف كاسيت جري 1.5 حصان",
                    style: GoogleFonts.almarai(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Row(
                children: [
                  Text("(4.3) ", style: TextStyle(color: Color(0xFFD3A100), fontSize: 16.sp)),
                  Icon(Icons.star, color: Color(0xFFD3A100), size: 18.sp),
                  Icon(Icons.star, color: Color(0xFFD3A100), size: 18.sp),
                  Icon(Icons.star, color: Color(0xFFD3A100), size: 18.sp),
                  Icon(Icons.star, color: Color(0xFFD3A100), size: 18.sp),
                  Icon(Icons.star_half, color: Color(0xFFD3A100), size: 18.sp),
                  Spacer(),
                  Image.asset("assets/img_7.png"),
                ],
              ),

              SizedBox(height: 10.h),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "مكيفات مثالية توفر هواء نقي وموزع، صُمم ليمنحك الراحة المثلى، مزود بتقنيات حديثة لضمان أداء عالي وكفاءة في استهلاك الطاقة.",
                    style: GoogleFonts.almarai(fontSize: 14.sp, color: Colors.grey.shade700),textAlign: TextAlign.right,
                  ),
                ],
              ),

              SizedBox(height: 10.h),

              Text(
                "2,750.00 ر.س",
                style: GoogleFonts.almarai(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Color(0xFFD3A100)),
              ),

              SizedBox(height: 10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildOptionBox("  توريد وتركيب + 10 متر نحاس ", "250+ ر.س"),
                  SizedBox(width: 10.w),
                  buildOptionBox("توريد وتركيب بدون نحاس", "350+ ر.س"),
                  SizedBox(width: 10.w),
                  buildOptionBox("توريد فقط", "مجاني"),
                ],
              ),

              SizedBox(height: 10.h),

              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(

                      width: 35.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF1D75B1)),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.remove,color: Color(0xFF1D75B1)),
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) quantity--;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    Text("$quantity", style: GoogleFonts.almarai(fontSize: 25.sp, fontWeight: FontWeight.bold,color: Color(0xFF1D75B1)),),
        SizedBox(width: 20.w,),
                    Container(
                      width: 35.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF1D75B1)),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.add,color: Color(0xFF1D75B1)),
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  label: Text("إضافة إلى عربة التسوق", style: GoogleFonts.almarai(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1D75B1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Text("تقييمات المنتج", style: GoogleFonts.almarai(fontSize: 18.sp, fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                  Icon(Icons.star, color: Color(0xFFD3A100), size: 22.sp),

                ],
              ),

              SizedBox(height: 25.h),

              buildReview("سعود القحطاني", "هنا يكتب تقييم المستخدم الذي قام بتقييمه للمنتج عند الشراء"),
              buildReview("محمد العتيبي", "هنا يكتب تقييم المستخدم الذي قام بتقييمه للمنتج عند الشراء"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildOptionBox(String title, String price) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Container(
      width: 70.w,
      height: 50.h,
      child: Column(
        children: [
          Text(title, style: GoogleFonts.almarai(fontSize: 10.sp, fontWeight: FontWeight.w800)),
          Text(price, style: GoogleFonts.almarai(fontSize: 12.sp, color: Color(0xFFD3A100), fontWeight: FontWeight.w800)),
        ],
      ),
    ),
  );
}

Widget buildReview(String name, String comment) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Container(
        width: 360.w,
        height: 60,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade200),
          color: Colors.grey.shade200,borderRadius: BorderRadius.circular(10.r), ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 7.h,),
                SizedBox(width: 7.w,),
                Text(textAlign: TextAlign.right,name, style: GoogleFonts.almarai(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                Icon(Icons.person_outline, color: Color(0xFF1D75B1), size: 18.sp),

              ],
            ),Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 7.h,),
                SizedBox(width: 7.w,),
              Text(comment, style: GoogleFonts.almarai(fontSize: 12.sp, color: Colors.grey[700])),
            ],)
          ],
        ),

      ),

      SizedBox(height: 6.h,)
    ],
  );
}
