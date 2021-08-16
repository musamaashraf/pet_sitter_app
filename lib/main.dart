import 'package:flutter/material.dart';
import 'package:whiskers_away/routes/routegenerator.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whiskers Away',
      theme: ThemeData(
        fontFamily: 'AirbnbCereal',
        primarySwatch: generateMaterialColor(Palette.primary),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: firstChoiceRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
