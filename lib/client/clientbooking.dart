import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:whiskers_away/models/jobdetailsclient.dart';
import 'package:whiskers_away/models/petsitter.dart';
import 'package:whiskers_away/style/colors.dart';
import 'package:whiskers_away/style/custom.dart';

class ClientBookingPage extends StatefulWidget {
  const ClientBookingPage({Key? key}) : super(key: key);

  @override
  _ClientBookingPageState createState() => _ClientBookingPageState();
}

class _ClientBookingPageState extends State<ClientBookingPage> {
  CustomWidgetClient customWidgetClient = CustomWidgetClient();
  bool showCompleted = true;
  bool showBookings = true;
  List<Widget> completedList = List.empty(growable: true);
  List<Widget> openList = List.empty(growable: true);
  List<Widget> petSitterList = List.empty(growable: true);

  void callState() {
    setState(() {
      showCompleted = !showCompleted;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    completedList.add(
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
            description: 'Need someone to take care of my doggy for some days.',
            location: 'Houston',
            dateFrom: 'May 20',
            dateTo: 'May 24',
            status: JobStatus.Completed),
      ),
    );
    completedList.add(
      customWidgetClient.createJobRow(
        context: context,
        job: ClientSideJobDetails(
            jobId: '123456',
            imageLink:
                'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
            personName: 'Max',
            age: 99,
            weight: 25.0,
            badge: 'Golden Retriever',
            description: 'Need someone to take care of my doggy for some days.',
            location: 'Houston',
            dateFrom: 'May 20',
            dateTo: 'May 24',
            status: JobStatus.Completed),
      ),
    );
    openList.add(
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
            description: 'Need someone to take care of my doggy for some days.',
            location: 'Houston',
            dateFrom: 'May 20',
            dateTo: 'May 24',
            status: JobStatus.InProgress),
      ),
    );
    openList.add(
      customWidgetClient.createJobRow(
        context: context,
        job: ClientSideJobDetails(
            jobId: '123456',
            imageLink:
                'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
            personName: 'Max',
            age: 99,
            weight: 25.0,
            badge: 'Golden Retriever',
            description: 'Need someone to take care of my doggy for some days.',
            location: 'Houston',
            dateFrom: 'May 20',
            dateTo: 'May 24',
            status: JobStatus.InProgress),
      ),
    );
    petSitterList.add(
      customWidgetClient.createPetSitterRow(
        context: context,
        petSitter: PetSitter(
          jobId: '123456',
          imageLink:
              'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
          personName: 'Sully',
          location: 'Houston',
          phone: '+44-123-123-123',
          email: 'musamaashraf@gmail.com',
          dateofbirth: '19/01/1990',
          totalBookings: 5,
          available: ['Oct. 20-30', 'Sep. 20-30', 'Aug. 20-30'],
        ),
      ),
    );
    petSitterList.add(
      customWidgetClient.createPetSitterRow(
        context: context,
        petSitter: PetSitter(
          jobId: '123456',
          imageLink:
              'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
          personName: 'Edward',
          location: 'Houston',
          phone: '+44-123-123-123',
          email: 'musamaashraf@gmail.com',
          dateofbirth: '19/01/1990',
          totalBookings: 5,
          available: ['Oct. 20-30', 'Sep. 20-30', 'Aug. 20-30'],
        ),
      ),
    );
    petSitterList.add(
      customWidgetClient.createPetSitterRow(
        context: context,
        petSitter: PetSitter(
          jobId: '123456',
          imageLink:
              'https://www.cdc.gov/healthypets/images/pets/angry-dog.jpg',
          personName: 'Ralph',
          location: 'Houston',
          phone: '+44-123-123-123',
          email: 'musamaashraf@gmail.com',
          dateofbirth: '19/01/1990',
          totalBookings: 10,
          available: ['Oct. 20-30', 'Sep. 20-30', 'Aug. 20-30'],
        ),
      ),
    );
  }

  Widget buildBookings() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.032),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Pet Sitter Bookings',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Palette.buttonPrimary,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Container(
            decoration: BoxDecoration(
              color: Palette.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Palette.grey.withOpacity(0.2),
                  offset: const Offset(0.0, 4.0),
                  blurRadius: 40.0,
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            width: MediaQuery.of(context).size.width * 0.96,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (!showCompleted) {
                      setState(() {
                        showCompleted = true;
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: showCompleted ? Palette.primary : Palette.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.44,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 6.0),
                    child: Text(
                      'Completed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: showCompleted ? Palette.white : Palette.primary,
                        fontWeight:
                            showCompleted ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (showCompleted) {
                      setState(() {
                        showCompleted = false;
                      });
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: !showCompleted ? Palette.primary : Palette.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    width: MediaQuery.of(context).size.width * 0.44,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 6.0),
                    child: Text(
                      'Open',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: !showCompleted ? Palette.white : Palette.primary,
                        fontWeight: !showCompleted
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: (showCompleted) ? completedList : openList,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPetSitters() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.032),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'My Pet Sitters',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Palette.buttonPrimary,
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: petSitterList,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              showBookings
                  ? Expanded(child: buildBookings())
                  : Expanded(child: buildPetSitters()),
              Container(
                decoration: BoxDecoration(
                  color: Palette.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Palette.grey.withOpacity(0.4),
                      offset: const Offset(0.0, 4.0),
                      blurRadius: 40.0,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: 8.0),
                width: MediaQuery.of(context).size.width * 0.96,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!showBookings) {
                          setState(() {
                            showBookings = true;
                          });
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 6.0),
                        child: Column(children: [
                          Icon(
                            Icons.search,
                            color:
                                showBookings ? Palette.primary : Palette.grey,
                          ),
                          Text(
                            'Bookings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  showBookings ? Palette.primary : Palette.grey,
                            ),
                          ),
                        ]),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (showBookings) {
                          setState(() {
                            showBookings = false;
                          });
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.44,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 6.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.people_alt_outlined,
                              color: !showBookings
                                  ? Palette.primary
                                  : Palette.grey,
                            ),
                            Text(
                              'My Pet Sitters',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: !showBookings
                                    ? Palette.primary
                                    : Palette.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
