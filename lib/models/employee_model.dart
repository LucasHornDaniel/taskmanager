class Employee {
  int? id;
  String firstName;
  String lastName;
  String address;
  String phoneNumber;

  Employee({this.id, required this.firstName, required this.lastName, required this.address, required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'address': address,
      'phoneNumber': phoneNumber,
    };
  }

  static Employee fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      address: map['address'],
      phoneNumber: map['phoneNumber'],
    );
  }
}