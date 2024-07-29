
class DataModel{
  final String firstName;
  final String lastName;
  final int driverId;
  final String profileImage;

  DataModel({
    required this.firstName,
    required this.lastName,
    required this.driverId,
    required this.profileImage,
  });



  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
    firstName: json["firstName"],
    lastName: json["lastName"],
    driverId: json["driverId"],
    profileImage: json["profileImage"],
  );

  Map<String, dynamic> toMap() => {
    "firstName": firstName,
    "lastName": lastName,
    "driverId": driverId,
    "profileImage": profileImage,
  };
}