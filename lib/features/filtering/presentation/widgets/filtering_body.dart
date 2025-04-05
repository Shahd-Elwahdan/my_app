import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class filtering_body extends StatefulWidget {
  const filtering_body({super.key});

  @override
  _filtering_bodyState createState() => _filtering_bodyState();
}

class _filtering_bodyState extends State<filtering_body> {
 
  Map<String, bool> brandFilters = {
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,
    'assets/img_7.png': false,


  };


  String? selectedPrice = "low_to_high";
  Map<String, bool> ratingFilters = {
    "high_to_low": false,
    "low_to_high": false,
  };
  bool sortBySales = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(

        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [

            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                IconButton(
                  icon: Icon(Icons.close, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
                Text(
                  'فلترة النتائج',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.almarai(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
            SizedBox(height: 10.h),

           
            Text(
              'فلترة حسب النوع',
              style: GoogleFonts.almarai(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 8.h),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:4,
                crossAxisSpacing: 8.w,
                childAspectRatio:2,
                mainAxisSpacing: 8.h,
              ),
              itemCount: 19,
              itemBuilder: (context, index) {
                String brand = brandFilters.keys.elementAt(0);
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      brandFilters[brand] = !brandFilters[brand]!;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color:
                          brandFilters[brand]!
                              ? Color(0xFF1D75B1).withOpacity(0.2)
                              : Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color:
                            brandFilters[brand]!
                                ? Color(0xFF1D75B1)
                                : Colors.grey.withOpacity(0.3),
                        width: 2.w,
                      ),
                    ),
                    child: Image.asset(
                      brand,
                      width: 40.w,
                      height: 40.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),

            Divider(thickness: 1.3, height: 20.h),
            
            Text(
              'حسب المبيعات',
              style: GoogleFonts.almarai(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 8.h),
            _buildSalesCheckbox("المنتجات الأكثر مبيعاً"),
            Divider(thickness: 1.3, height: 20.h),
            
            Text(
              'حسب السعر',
              style: GoogleFonts.almarai(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),

            SizedBox(height: 8.h),
            Row(
              children: [
                _buildCheckbox("من الأقل إلى الأعلى سعراً", "low_to_high"),
                _buildCheckbox("من الأعلى إلى الأقل سعراً", "high_to_low"),
              ],
            ),

            Divider(thickness: 1.3, height: 20.h),
           
            Text(
              'حسب التقييم',
              style: GoogleFonts.almarai(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                _buildRatingCheckbox(
                  "من الأعلى إلى الأقل تقييماً",
                  "high_to_low",
                ),
                _buildRatingCheckbox(
                  "من الأقل إلى الأعلى تقييماً",
                  "low_to_high",
                ),
              ],
            ),

            SizedBox(height: 20.h),
            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1D75B1),
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
                child: Text(
                  'فلترة',
                  style: GoogleFonts.almarai(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  
  Widget _buildSalesCheckbox(String title) {
    return Row(
      children: [
        Checkbox(
          value: sortBySales,
          onChanged: (bool? isChecked) {
            setState(() {
              sortBySales = isChecked ?? false;
              if (sortBySales) {
                selectedPrice = null; // Reset price sorting
                ratingFilters.updateAll(
                  (key, value) => false,
                ); // Reset rating sorting
              }
            });
          },
          activeColor: Color(0xFF1D75B1),
        ),
        Text(
          title,
          style: GoogleFonts.almarai(
            fontSize: 11.7.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }


  Widget _buildCheckbox(String title, String value) {
    return Row(
      children: [
        Checkbox(
          value: selectedPrice == value,
          onChanged: (bool? isChecked) {
            setState(() {
              selectedPrice = isChecked == true ? value : null;
            });
          },
          activeColor: Color(0xFF1D75B1),
        ),
        Text(
          title,
          style: GoogleFonts.almarai(
            fontSize: 11.7.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }


  Widget _buildRatingCheckbox(String title, String key) {
    return Row(
      children: [
        Checkbox(
          value: ratingFilters[key],
          onChanged: (bool? isChecked) {
            setState(() {
              ratingFilters[key] = isChecked ?? false;
            });
          },
          activeColor: Color(0xFF1D75B1),
        ),
        Text(
          title,
          style: GoogleFonts.almarai(
            fontSize: 11.6.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
