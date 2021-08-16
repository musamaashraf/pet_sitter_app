class PetSitter {
  PetSitter(
      {required this.jobId,
      required this.imageLink,
      required this.personName,
      required this.dateofbirth,
      required this.email,
      required this.phone,
      required this.totalBookings,
      required this.location,
      required this.available});
  final String jobId;
  final String imageLink;
  final String personName;
  final int totalBookings;
  final String email;
  final String phone;
  final String dateofbirth;
  final String location;
  final List<String> available;
}
