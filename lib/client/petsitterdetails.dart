import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whiskers_away/models/petsitter.dart';
import 'package:whiskers_away/style/colors.dart';

class PetSitterDetailsPage extends StatefulWidget {
  const PetSitterDetailsPage({Key? key, required this.petSitter})
      : super(key: key);
  final PetSitter petSitter;

  @override
  _PetSitterDetailsPageState createState() => _PetSitterDetailsPageState();
}

class _PetSitterDetailsPageState extends State<PetSitterDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primary,
        title: const Text(
          'Employee Details',
          style: TextStyle(color: Palette.white),
        ),
        iconTheme: const IconThemeData(color: Palette.white),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              bottom: MediaQuery.of(context).size.height * 0.60,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: const BoxDecoration(
                  color: Palette.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: MediaQuery.of(context).size.height * 0.14,
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.62,
                  width: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Palette.grey.withOpacity(0.4),
                        offset: const Offset(0.0, 4.0),
                        blurRadius: 40.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.petSitter.personName,
                        style: const TextStyle(
                          color: Palette.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Palette.primary,
                            size: 20.0,
                          ),
                          Text(
                            widget.petSitter.location,
                            style: const TextStyle(
                              color: Palette.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.phone,
                              color: Palette.primary,
                              size: 20.0,
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Text(
                              widget.petSitter.phone,
                              style: const TextStyle(
                                color: Palette.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              color: Palette.primary,
                              size: 20.0,
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Text(
                              widget.petSitter.email,
                              style: const TextStyle(
                                color: Palette.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.06),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.cake_outlined,
                              color: Palette.primary,
                              size: 20.0,
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.02),
                            Text(
                              widget.petSitter.dateofbirth,
                              style: const TextStyle(
                                color: Palette.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        child: const Divider(
                          thickness: 2.0,
                          color: Palette.primary,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      const Text(
                        'Availablitiy',
                        style: TextStyle(
                          color: Palette.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.68,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Palette.white,
                          border: Border.all(
                            color: Palette.primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Palette.primary,
                              size: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              widget.petSitter.available[0],
                              style: const TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Available',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.68,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Palette.white,
                          border: Border.all(
                            color: Palette.primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Palette.primary,
                              size: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              widget.petSitter.available[1],
                              style: const TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Available',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.68,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 12.0),
                        decoration: BoxDecoration(
                          color: Palette.white,
                          border: Border.all(
                            color: Palette.primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: Palette.primary,
                              size: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              widget.petSitter.available[2],
                              style: const TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Available',
                              style: TextStyle(
                                  color: Palette.primary,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.04,
              left: 0.0,
              right: 0.0,
              child: Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.primary, width: 4.0),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height),
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2015/09/02/12/58/woman-918788_960_720.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
