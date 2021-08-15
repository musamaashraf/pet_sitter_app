import 'package:flutter/material.dart';
import 'package:whiskers_away/models/jobdetailmodel.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';
import 'package:whiskers_away/style/custom.dart';

class HomePetSitterPage extends StatefulWidget {
  const HomePetSitterPage({Key? key}) : super(key: key);

  @override
  _HomePetSitterPageState createState() => _HomePetSitterPageState();
}

class _HomePetSitterPageState extends State<HomePetSitterPage> {
  final TextEditingController _searchEditingController =
      TextEditingController();
  CustomWidget customWidget = CustomWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.032),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome,',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'John Karter',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Palette.buttonPrimary,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              TextFormField(
                controller: _searchEditingController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Palette.primary,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Palette.grey,
                      width: 1.0,
                    ),
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Palette.secondary.withOpacity(0.40),
                  ),
                  suffixIcon: const Icon(Icons.settings),
                  focusColor: Palette.primary.withOpacity(0.20),
                  fillColor: Palette.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 2.0, horizontal: 12.0),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      customWidget.createJobRow(
                        context: context,
                        job: JobDetails(
                            jobId: '123456',
                            imageLink:
                                'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
                            personName: 'Sully',
                            age: 99,
                            weight: 25.0,
                            badge: 'Golden Retriever',
                            description:
                                'Need someone to take care of my doggy for some days.',
                            location: 'Houston',
                            dateFrom: 'May 20',
                            dateTo: 'May 24'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
