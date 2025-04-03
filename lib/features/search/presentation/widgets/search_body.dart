import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/features/result/Presentation/result_view.dart';

class search_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('البحث', style: GoogleFonts.almarai(color: Colors.black,fontWeight: FontWeight.w700),),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Color(0xFF1D75B1))),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'أدخل كلمة البحث',
                hintStyle: GoogleFonts.almarai(),
                prefixIcon: IconButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => result_view()),
                );}, icon: Icon(Icons.search,color: Color(0xFF1D75B1),)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off, size: 80, color: Colors.grey),
                  SizedBox(height: 10),
                  Text(
                    'عذراً، لا توجد نتائج للبحث',
                    style: GoogleFonts.almarai(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
