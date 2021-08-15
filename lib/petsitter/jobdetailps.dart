import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whiskers_away/models/jobdetailmodel.dart';
import 'package:whiskers_away/style/colors.dart';

class JobDetailsPetSitterPage extends StatefulWidget {
  const JobDetailsPetSitterPage({Key? key, required this.jobDetails})
      : super(key: key);
  final JobDetails? jobDetails;
  @override
  _JobDetailsPetSitterPageState createState() =>
      _JobDetailsPetSitterPageState();
}

class _JobDetailsPetSitterPageState extends State<JobDetailsPetSitterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, 6.0),
                        color: Palette.black.withOpacity(0.8),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.jobDetails!.imageLink),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16.0),
                          alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 18.0,
                            color: Palette.white,
                          ),
                        ),
                        Expanded(child: SizedBox(height: 1.0)),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 22.0, horizontal: 0.0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 22.0),
                          decoration: BoxDecoration(
                            color: Palette.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Palette.white),
                          ),
                          width: MediaQuery.of(context).size.width * 0.80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Golden Retriever',
                                style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Text(
                                '25 lbs',
                                style: TextStyle(
                                  color: Palette.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    size: 24.0,
                                    color: Palette.primary,
                                  ),
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Text(
                                      'Houston',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: Palette.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Text(
                                      'May 20',
                                      textAlign: TextAlign.end,
                                      style: const TextStyle(
                                          color: Palette.primary,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.width * 0.14,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'John Steven',
                                  style: const TextStyle(
                                    color: Palette.secondary,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text('May 25, 2021'),
                            ],
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 2.0),
                            child: Text('Owner'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Text(
                    'My job requires moving to another country. I don’t have the opportunity to take the cat with me. I am looking for good people who will shelter my Golden Retriver'),
              ),
              Expanded(child: SizedBox(height: 1.0)),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(10.0)),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Palette.white,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(10.0)),
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 12.0),
                      width: MediaQuery.of(context).size.width * 0.76,
                      alignment: Alignment.center,
                      child: Text(
                        'Request to pet sit',
                        style: TextStyle(
                            color: Palette.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0.0, 4.0),
                        color: Palette.buttonPrimary.withOpacity(0.2),
                        blurRadius: 16.0),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                width: MediaQuery.of(context).size.width * 0.92,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 1.0),
                    Column(
                      children: [
                        Icon(Icons.search),
                        Text('Search'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.cases_outlined),
                        Text('My Availability'),
                      ],
                    ),
                    SizedBox(width: 1.0),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
