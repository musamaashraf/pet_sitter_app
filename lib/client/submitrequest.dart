import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class SubmitRequestPage extends StatefulWidget {
  const SubmitRequestPage({Key? key}) : super(key: key);

  @override
  _SubmitRequestPageState createState() => _SubmitRequestPageState();
}

class _SubmitRequestPageState extends State<SubmitRequestPage> {
  final TextEditingController _petNameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _breedController = TextEditingController();
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  int ownHome = 0;

  final _formKey = GlobalKey<FormState>();

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
          'Submit a Request',
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
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pet sitting services offered in yor own home are sales tax exempt, whereas pet sitting services offered in the sitter’s home are subject to standard sales tax rates',
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                      'Pet Sitting at',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  Container(
                    decoration: BoxDecoration(
                      color: Palette.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Palette.primary.withOpacity(0.2),
                          offset: const Offset(0.0, 4.0),
                          blurRadius: 12.0,
                        ),
                      ],
                    ),
                    child: ToggleSwitch(
                      minWidth: MediaQuery.of(context).size.width * 0.96,
                      totalSwitches: 2,
                      initialLabelIndex: 0,
                      radiusStyle: true,
                      labels: const ['Own Home', 'Sitter\'s home'],
                      activeBgColor: const [Palette.primary],
                      activeFgColor: Palette.white,
                      inactiveBgColor: Palette.white,
                      inactiveFgColor: Palette.primary,
                      onToggle: (value) {
                        ownHome = value;
                      },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pet Name',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _petNameController,
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
                      hintText: 'Pet Name',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Age',
                                style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008),
                            TextFormField(
                              controller: _ageController,
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
                                hintText: 'Age',
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
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Weight',
                                style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008),
                            TextFormField(
                              controller: _weightController,
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
                                hintText: 'Weight',
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
                              keyboardType: TextInputType.number,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Breed',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                      controller: _breedController,
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
                        hintText: 'Enter Breed',
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
                      keyboardType: TextInputType.text),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'From',
                                style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008),
                            TextFormField(
                              controller: _fromDateController,
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
                                hintText: 'Select a date',
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
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'To',
                                style: TextStyle(
                                    color: Palette.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.008),
                            TextFormField(
                              controller: _toDateController,
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
                                hintText: 'Select a date',
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
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Description',
                      style: TextStyle(
                          color: Palette.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.008),
                  TextFormField(
                    controller: _descriptionController,
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
                      hintText: 'Enter Description',
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
                    minLines: 4,
                    maxLines: 4,
                    keyboardType: TextInputType.text,
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
                        'Submit',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
