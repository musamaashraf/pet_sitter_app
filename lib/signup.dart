import 'package:dotted_border/dotted_border.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whiskers_away/database/databasemethods.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _dateofBirthController = TextEditingController();

  final DatabaseMethods _databaseMethods = DatabaseMethods();
  final _formKey = GlobalKey<FormState>();

  void signup() async {
    if (_formKey.currentState!.validate()) {
      await _databaseMethods
          .signUpWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim())
          .then((value) async {
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          if (user.uid.isNotEmpty) {
            Map<String, dynamic> userMap = {
              'full-name': _fullNameController.text,
              'location': _locationController.text,
              'phone-no': _phoneNoController.text,
              'date-of-birth': _dateofBirthController.text,
            };
            await _databaseMethods.addUser(userMap, user.uid).then((value) {
              Navigator.pushNamed(context, homePetSitterRoute);
            });
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0x44000000),
        iconTheme: const IconThemeData(
          color: Palette.primary,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Sign up',
          style: TextStyle(color: Palette.primary),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Image.asset(
                    'assets/img/logo.png',
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  GestureDetector(
                    onTap: () {},
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: Palette.primary,
                      radius: const Radius.circular(20.0),
                      dashPattern: [
                        MediaQuery.of(context).size.width * 0.06,
                        MediaQuery.of(context).size.width * 0.04
                      ],
                      strokeCap: StrokeCap.round,
                      strokeWidth: 2.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Palette.primary.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(12.0)),
                        width: MediaQuery.of(context).size.width * 0.90,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/add_icon.png',
                              width: MediaQuery.of(context).size.width * 0.10,
                            ),
                            const Text('Add Image'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Full Name',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _fullNameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      focusColor: Palette.primary.withOpacity(0.20),
                      fillColor: Palette.white.withOpacity(0.8),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Palette.grey.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Location',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Enter Location',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      fillColor: Palette.white.withOpacity(0.8),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Palette.grey.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Date of Birth',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                      controller: _dateofBirthController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 12.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Palette.primary,
                            width: 1.0,
                          ),
                        ),
                        hintText: 'Enter Your Date of Birth',
                        hintStyle: TextStyle(
                          color: Palette.secondary.withOpacity(0.40),
                        ),
                        fillColor: Palette.white.withOpacity(0.8),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Palette.grey.withOpacity(0.8),
                            width: 1.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.datetime),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _phoneNoController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      fillColor: Palette.white.withOpacity(0.8),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Palette.grey.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'E-Mail',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Enetr E-Mail address',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      fillColor: Palette.white.withOpacity(0.8),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Palette.grey.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 1.0,
                        ),
                      ),
                      hintText: 'Enter a password',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      fillColor: Palette.white.withOpacity(0.8),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Palette.grey.withOpacity(0.8),
                          width: 1.0,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, homePetSitterRoute);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Palette.buttonPrimary,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: const Text(
                        'Create Account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Palette.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, homePetSitterRoute);
                    },
                    child: const Text(
                      'Already have an account? Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Palette.primary,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
