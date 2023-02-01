/*//import 'package:flutter/';
import 'package:teatros_rejionales/Pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:teatros_rejionales/Pages/Onbording_stop.dart';
import 'package:teatros_rejionales/Providers/onboarding_provider.dart';
import 'package:teatros_rejionales/Utils/preferences.dart';
import 'package:teatros_rejionales/Utils/utils.dart';
import 'package:teatros_rejionales/widgets/next_button.dart';
import 'package:provider/provider.dart';

class OnboardingPage extends StatelessWidget {
  static final String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    final preferences = Preferences();
    var onboardingProvider = Provider.of<OnboardingProvider>(context);
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          _OnboardingPages(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _Dots(),
          ),
          Positioned(
            right: 0,
            bottom: screenHeight * 0.05,
            child: NextButton(
              onPressed: () {
                if (onboardingProvider.currentPage == 2) {
                  preferences.initialPage = HomePage.routeName;

                  Navigator.of(context)
                      .pushReplacementNamed(HomePage.routeName);
                }

                onboardingProvider.currentPage =
                    onboardingProvider.currentPage + 1;
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _OnboardingPages extends StatelessWidget {
  const _OnboardingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onboardingProvider = Provider.of<OnboardingProvider>(context);

    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: onboardingProvider.pageController,
      onPageChanged: (int index) {
        onboardingProvider.currentPage = index;
      },
      children: [
        OnboardingStep(
          image: 'assets/images/image1.png',
          title: 'Decentralized Ridesharing',
          subtitle:
              '0% commission platform - drivers can earn significantly more, while riders can catch a ride for substantially less.',
          color: Color.fromARGB(255, 235, 4, 27),
        ),
        OnboardingStep(
          image: 'assets/images/image2.png',
          title: 'NEO Blockchain',
          subtitle:
              'NEO provides a fast, highly-scalable and modern blockchain infrastructure used to enable to CRUZEO Platform.',
          color: Color.fromARGB(255, 5, 138, 247),
        ),
        OnboardingStep(
          image: 'assets/images/image3.png',
          title: 'Ontology Framework',
          subtitle:
              'CRUZEO establishes a distributed trust network with the Ontology framework for driver digital identity certification.',
          color: Color.fromARGB(255, 245, 221, 4),
        ),
      ],
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onboardingProvider = Provider.of<OnboardingProvider>(context);
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: screenHeight * 0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Dot(active: onboardingProvider.currentPage == 0),
          SizedBox(width: 10.0),
          _Dot(active: onboardingProvider.currentPage == 1),
          SizedBox(width: 10.0),
          _Dot(active: onboardingProvider.currentPage == 2),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({
    Key? key,
    required this.active,
  }) : super(key: key);

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: active ? CustomTheme.colorGreen : CustomTheme.colorSpanishGray,
        borderRadius: BorderRadius.circular(5.0),
      ),
      width: 10.0,
      height: 10.0,
    );
  }
}*/
