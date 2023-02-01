/*import 'package:flutter/material.dart';

class OnboardingProvider with ChangeNotifier {
  int _currentPage = 0;

  PageController _pageController = PageController(
    initialPage: 0,
  );

  get currentPage => _currentPage;
  get pageController => _pageController;

  set currentPage(int value) {
    _currentPage = value;

    _pageController.animateToPage(
      value,
      duration: Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );

    notifyListeners();
  }
}*/
