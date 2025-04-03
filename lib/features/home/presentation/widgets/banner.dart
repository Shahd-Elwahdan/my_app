import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerSlider extends StatefulWidget {
  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _currentIndex = 0;
  final List<String> _images = [
    "assets/img_6.png",
    "assets/img_5.png",

  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), _nextImage);
  }

  void _nextImage() {
    if (!mounted) return;
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
    Future.delayed(Duration(seconds: 3), _nextImage);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: double.infinity,
      child: Stack(
        children: [
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            child: Image.asset(
              _images[_currentIndex],
              key: ValueKey(_currentIndex),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_images.length, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: _currentIndex == index ? 12 : 8,
                  height: _currentIndex == index ? 12 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.white : Colors.grey,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}