enum JobStatus { InProgress, Cancelled, Completed }

class ClientSideJobDetails {
  ClientSideJobDetails(
      {required this.jobId,
      required this.imageLink,
      required this.personName,
      required this.age,
      required this.weight,
      required this.badge,
      required this.description,
      required this.location,
      required this.dateTo,
      required this.dateFrom,
      required this.status});
  final String jobId;
  final String imageLink;
  final String personName;
  final int age;
  final double weight;
  final String badge;
  final String description;
  final String location;
  final String dateTo;
  final String dateFrom;
  final JobStatus status;
}
