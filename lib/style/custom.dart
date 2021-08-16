import 'package:flutter/material.dart';
import 'package:whiskers_away/models/jobdetailmodel.dart';
import 'package:whiskers_away/models/jobdetailsclient.dart';
import 'package:whiskers_away/models/petsitter.dart';
import 'package:whiskers_away/routes/routenames.dart';
import 'package:whiskers_away/style/colors.dart';

class CustomWidget {
  Widget createJobRow({
    required BuildContext context,
    required JobDetails job,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, jobDetailsPetSitterRoute, arguments: job);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Palette.primary.withOpacity(0.1),
              offset: const Offset(0.0, 4.0),
              blurRadius: 20.0,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.14,
                  height: MediaQuery.of(context).size.width * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      job.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.70,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.34,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              job.personName,
                              style: const TextStyle(
                                color: Palette.secondary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text('${job.age} years old'),
                          const Icon(
                            Icons.circle,
                            size: 6.0,
                            color: Palette.primary,
                          ),
                          Text('${job.weight.toInt()} lbs')
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                        job.badge,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Palette.grey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                job.description,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: Palette.grey,
                  fontSize: 14.0,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.location_on,
                  size: 24.0,
                  color: Palette.primary,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: Text(
                    job.location,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: Text(
                    '${job.dateFrom} - ${job.dateTo}',
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
    );
  }
}

class CustomWidgetClient {
  Widget createJobRow({
    required BuildContext context,
    required ClientSideJobDetails job,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, petSitterExpDetailsRoute);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Palette.grey.withOpacity(0.2),
              offset: const Offset(0.0, 4.0),
              blurRadius: 40.0,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.14,
                  height: MediaQuery.of(context).size.width * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      job.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.72,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.34,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              job.personName,
                              style: const TextStyle(
                                color: Palette.secondary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 12.0),
                            decoration: BoxDecoration(
                                color: Palette.buttonPrimary.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(6.0)),
                            child: Text(
                              job.status == JobStatus.InProgress
                                  ? 'In Progress'
                                  : job.status == JobStatus.Cancelled
                                      ? 'Cancelled'
                                      : job.status == JobStatus.Completed
                                          ? 'Completed'
                                          : 'N/A',
                              style: const TextStyle(
                                color: Palette.primary,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                        job.badge,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          color: Palette.grey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.location_on,
                  size: 24.0,
                  color: Palette.primary,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.30,
                  child: Text(
                    job.location,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: Text(
                    '${job.dateFrom} - ${job.dateTo}',
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
    );
  }

  Widget createPetSitterRow({
    required BuildContext context,
    required PetSitter petSitter,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          petSitterDetailsRoute,
          arguments: petSitter,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Palette.grey.withOpacity(0.4),
              offset: const Offset(0.0, 4.0),
              blurRadius: 40.0,
            )
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.18,
                  height: MediaQuery.of(context).size.width * 0.18,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      petSitter.imageLink,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.68,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.32,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              petSitter.personName,
                              style: const TextStyle(
                                color: Palette.secondary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 2.0),
                            child: Icon(
                              Icons.more_vert,
                              color: Palette.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: const Text(
                        'Total Bookings',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Palette.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.006),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.34,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.contact_page,
                                size: 24.0,
                                color: Palette.primary,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.26,
                                child: Text(
                                  petSitter.totalBookings.toString(),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: MediaQuery.of(context).size.width * 0.34,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 24.0,
                                color: Palette.primary,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02),
                              Text(
                                petSitter.location,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
