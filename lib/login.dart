import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whiskers_away/database/databasemethods.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();
  final DatabaseMethods _databaseMethods = DatabaseMethods();

  void login() async {
    if (_formKey.currentState!.validate()) {
      await _databaseMethods
          .signInWithEmailAndPassword(
              email: _emailEditingController.text.trim(),
              password: _passwordEditingController.text.trim())
          .then((value) {
        User? user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          if (user.uid.isNotEmpty) {
            Navigator.pushNamed(context, homePetSitterRoute);
          }
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                  Image.asset(
                    'assets/img/login.png',
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Image.asset(
                    'assets/img/logo.png',
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  TextFormField(
                    controller: _emailEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Email Address',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      focusColor: Palette.primary.withOpacity(0.20),
                      fillColor: Palette.white,
                      filled: true,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  TextFormField(
                    controller: _passwordEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          color: Palette.primary,
                          width: 2.0,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Palette.secondary.withOpacity(0.40),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() {
                          showPassword = !showPassword;
                        }),
                        child: Icon(showPassword
                            ? Icons.remove_red_eye_rounded
                            : Icons.remove_red_eye_outlined),
                      ),
                      focusColor: Palette.primary.withOpacity(0.20),
                      fillColor: Palette.white,
                      filled: true,
                    ),
                    obscureText: !showPassword,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      onPressed: () {},
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 0.0),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Palette.primary,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      login();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Palette.buttonPrimary,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 12.0),
                      width: MediaQuery.of(context).size.width * 0.50,
                      child: const Text(
                        'Login',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont\' have an account?  ',
                        style: TextStyle(
                          color: Palette.grey,
                          fontSize: 13.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, signUpRoute);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Palette.primary,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
