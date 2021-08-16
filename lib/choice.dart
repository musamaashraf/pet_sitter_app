import 'package:flutter/material.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class FirstChoicePage extends StatefulWidget {
  const FirstChoicePage({Key? key}) : super(key: key);

  @override
  _FirstChoicePageState createState() => _FirstChoicePageState();
}

class _FirstChoicePageState extends State<FirstChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/backgrounds/1.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.032),
              const Text(
                'Welcome',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                'John Karter',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Palette.buttonPrimary,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.032),
              const Text(
                'Choose from the options below',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, onBoardingRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.primary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 12.0),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Row(
                    children: [
                      Image.asset('assets/img/1.png'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'I am',
                            style: TextStyle(
                              color: Palette.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            ' a pet sitter',
                            style: TextStyle(
                              color: Palette.white,
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      height: 2.0,
                      thickness: 1.0,
                      color: Palette.primary,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text('OR'),
                  ),
                  Expanded(
                    child: Divider(
                      height: 2.0,
                      thickness: 1.0,
                      color: Palette.primary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, clientHomeRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Palette.primary.withOpacity(0.6),
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 12.0),
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'I am',
                            style: TextStyle(
                              color: Palette.primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            ' a pet owner',
                            style: TextStyle(
                              color: Palette.primary,
                              fontWeight: FontWeight.w100,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.06,
                      ),
                      Image.asset('assets/img/2.png'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
