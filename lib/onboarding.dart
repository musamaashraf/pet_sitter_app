import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final List<Map<String, String>> imgList = [
    {
      'background': 'assets/backgrounds/2.png',
      'mid': 'assets/img/3.png',
      'page': '1',
      'heading': 'Morris County\'s Exclusive Pet Sitting App',
      'subtitle': 'The Pet Sitting App created by Pet Sitters',
      'description':
          'Earn \$1 in Whiskers Rewards for use on your own future pet sitting needs every time you book a gig through Whiskers Away',
    },
    {
      'background': 'assets/backgrounds/3.png',
      'mid': 'assets/img/4.png',
      'page': '2',
      'heading': 'Post Your Pet Sitting need, Pet Sitters Come to You!',
      'subtitle': 'No need for scrolling through endless Pet Sitters',
      'description':
          'Earn 1% back in Whiskers Rewards for use on future bookings every time you pay a sitter through Whiskers Away',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CarouselSlider(
              items: imgList
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage((item['background'] as dynamic)),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 12.0),
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.04),
                          Image.asset(
                            'assets/img/logo.png',
                            width: MediaQuery.of(context).size.width * 0.40,
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.06),
                          Image.asset(
                            (item['mid'] as dynamic),
                            width: MediaQuery.of(context).size.width * 0.70,
                          ),
                          (item['page'] == '1')
                              ? SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.08)
                              : SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.04),
                          Container(
                            decoration: BoxDecoration(
                              color: Palette.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Palette.primary.withOpacity(0.08),
                                  offset: const Offset(0.0, 4.0),
                                  blurRadius: 24.0,
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.90,
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            child: Column(
                              children: [
                                Text(
                                  (item['heading'] as dynamic),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Palette.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.01),
                                Text(
                                  (item['subtitle'] as dynamic),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Palette.black,
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                const Divider(
                                    color: Palette.primary,
                                    thickness: 1.0,
                                    height: 2.0),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                Text(
                                  (item['description'] as dynamic),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.031),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.90,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, signUpRoute);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Palette.primary,
                                      borderRadius: BorderRadius.circular(9.0),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 22.0),
                                    child: const Text('Sign Up'),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, loginRoute);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Palette.white,
                                      borderRadius: BorderRadius.circular(9.0),
                                      border: Border.all(
                                        color: Palette.primary.withOpacity(0.8),
                                        width: 2.0,
                                      ),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.40,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0, horizontal: 22.0),
                                    child: const Text('Login'),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.030),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.circle,
                                color: (item['page'] == '1')
                                    ? Palette.primary
                                    : Palette.black.withOpacity(0.20),
                                size: 12.0,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02),
                              Icon(
                                Icons.circle,
                                color: (item['page'] == '2')
                                    ? Palette.primary
                                    : Palette.black.withOpacity(0.20),
                                size: 12.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
