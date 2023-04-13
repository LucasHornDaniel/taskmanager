class Client {
  int? id;
  String firstName;
  String lastName;
  String address;
  String phoneNumber;

  Client({this.id, required this.firstName, required this.lastName, required this.address, required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'address': address,
      'phoneNumber': phoneNumber,
    };
  }

  static Client fromMap(Map<String, dynamic> map) {
    return Client(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
    );
  }
}