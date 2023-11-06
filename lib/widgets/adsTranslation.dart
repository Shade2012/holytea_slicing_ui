import 'package:flutter/material.dart';
import 'package:holytea_slicing_ui/utils/themes.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:async';

class ImageTransitionWidget extends StatefulWidget {
  @override
  _ImageTransitionWidgetState createState() => _ImageTransitionWidgetState();
}

class _ImageTransitionWidgetState extends State<ImageTransitionWidget> {
  late PageController _pageController;
  late int _currentIndex;
  late Timer _timer;
  List<String> imageUrls = [ads_1, ads_2]; // Replace with your image URLs

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: _currentIndex);
    _startImageTransition();
  }

  void _startImageTransition() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentIndex < imageUrls.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(_currentIndex,
          duration: Duration(seconds: 2), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 370,
      height: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: PageView.builder(
        controller: _pageController,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: Duration(seconds: 2),
            width: 370,
            height: 163,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage(imageUrls[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }
}
