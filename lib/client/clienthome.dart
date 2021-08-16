import 'package:flutter/material.dart';
import 'package:whiskers_away/models/jobdetailsclient.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';
import 'package:whiskers_away/style/custom.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({Key? key}) : super(key: key);

  @override
  _ClientHomePageState createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  final TextEditingController _searchEditingController =
      TextEditingController();
  CustomWidgetClient customWidgetClient = CustomWidgetClient();

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Jessica',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Palette.buttonPrimary,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, clientBookingRoute);
                    },
                    child: const Text(
                      'My Bookings',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Palette.buttonPrimary,
                      ),
                    ),
                  ),
                ],
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
                      customWidgetClient.createJobRow(
                        context: context,
                        job: ClientSideJobDetails(
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
                            dateTo: 'May 24',
                            status: JobStatus.InProgress),
                      ),
                      customWidgetClient.createJobRow(
                        context: context,
                        job: ClientSideJobDetails(
                            jobId: '123456',
                            imageLink:
                                'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
                            personName: 'Sasha',
                            age: 99,
                            weight: 25.0,
                            badge: 'Husky',
                            description:
                                'Need someone to take care of my doggy for some days.',
                            location: 'Houston',
                            dateFrom: 'Jan 01',
                            dateTo: 'Jan 04',
                            status: JobStatus.Completed),
                      ),
                      customWidgetClient.createJobRow(
                        context: context,
                        job: ClientSideJobDetails(
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
                            dateTo: 'May 24',
                            status: JobStatus.Cancelled),
                      ),
                      customWidgetClient.createJobRow(
                        context: context,
                        job: ClientSideJobDetails(
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
                            dateTo: 'May 24',
                            status: JobStatus.Cancelled),
                      ),
                      customWidgetClient.createJobRow(
                        context: context,
                        job: ClientSideJobDetails(
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
                            dateTo: 'May 24',
                            status: JobStatus.Cancelled),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, submitequestRoute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.primary,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  width: MediaQuery.of(context).size.width * 0.60,
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Submit a request',
                    style: TextStyle(
                      color: Palette.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
