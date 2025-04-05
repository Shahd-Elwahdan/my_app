import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/home/presentation/widgets/banner.dart';
import 'package:myapp/features/product_info/presentation/product_info_view.dart';
import 'package:myapp/features/products_list/presentation/products_list_view.dart';
import 'package:myapp/features/search/presentation/search_view.dart';
class home_body extends StatelessWidget {
  const home_body({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'color': Color(0xFFD68426), 'label': 'مكيف اسبليت', 'image': 'assets/img_1.png','path':products_list_view()},
      {'color': Color(0xFF1D75B1), 'label': 'مكيف جداري', 'image': 'assets/img_2.png','path':products_list_view()},
      {'color': Color(0xFFDD4242), 'label': 'مكيف مخفي', 'image': 'assets/img_3.png','path':products_list_view()},
      {'color': Color(0xFF27C341), 'label': 'مكيف كاسيت', 'image': 'assets/img_4.png','path':products_list_view()},
      {'color': Color(0xFF16C6DA), 'label': 'مكيف باكيج', 'image': 'assets/img_5.png','path':products_list_view()},
      {'color': Color(0xFF484693), 'label': 'مكيف دولابي', 'image': 'assets/img_6.png','path':products_list_view()},
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Define what happens when img_9 is tapped
                      },
                      icon: Image.asset("assets/img_9.png", width: 30, height: 30),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => search_view()),
                        );
                      },
                      icon: Icon(Icons.search, size: 30, color: Color(0xFF1D75B1)),
                    ),
                  ],
                ),
                Text(
                  "مرحبا, اسم المستخدم",
                  style: GoogleFonts.almarai(
                      fontSize: 16.sp, fontWeight: FontWeight.w800),
                ),
              ],
            ),

            SizedBox(height: 20.h),
              BannerSlider(),
              SizedBox(height: 20.h),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                itemCount: services.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => services[index]['path']),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: services[index]['color'],
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(services[index]['image'], width: 120.w, height: 120.h),
                          Text(
                            services[index]['label'],
                            style: GoogleFonts.almarai(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

              SizedBox(height: 20.h),
              SectionTitle(title: "الأكثر مبيعا",),
              ProductListView(),
              SizedBox(height: 40.h,),
              SectionTitle(title: "فتحات التكييف الألمنيوم"),
              ProductListView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF1D75B1),
        unselectedItemColor: Colors.black,
        currentIndex: 4,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined,), label: "المزيد",),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard,), label: "أعمالنا",),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app_outlined), label: "مشاريعنا"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "االعربة"),
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "الرئيسية"),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "عرض المزيد",
            style: GoogleFonts.almarai(
                fontSize: 14.sp, fontWeight: FontWeight.w600, color: Color(0xFFCA7009)),
          ),
          Text(
            title,
            style: GoogleFonts.almarai(
                fontSize: 18.sp, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),

        ],
      ),
    );
  }
}
class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => product_info_view()));},
            child: Container(
              width: 160.w,
              margin: EdgeInsets.symmetric(horizontal: 8.w),
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
                        SizedBox(height: 5.h),
                        Text("هناك خصم متاح لفترة محدودة",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.almarai(
                                fontSize: 12.sp, color: Colors.grey)),
                        SizedBox(height: 5.h),
                        Text("ر.س 2,750.00",
                            style: GoogleFonts.almarai(
                                fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xFFCA7009))),
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
                            color: Color(0xFF1D75B1), 
                            width: .8.w, // Border width
                          ),
                          borderRadius: BorderRadius.circular(12.r), 
                        ),
                        child:Row(
                          children: [
                            Text(" أضف للعربة ", style: GoogleFonts.almarai(fontSize: 11.sp, color: Color(0xFF1D75B1),fontWeight: FontWeight.w700)),
                            SizedBox(width: 4.w,),
                            Icon(Icons.shopping_cart,color: Color(0xFF1D75B1), size: 20),],
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
    );
  }
}
