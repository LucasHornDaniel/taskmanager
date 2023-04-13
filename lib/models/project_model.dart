class Project {
  int? id;
  String name;
  String description;
  String startDate;
  String endDate;

  Project({this.id, required this.name, required this.description, required this.startDate, required this.endDate});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'startDate': startDate,
      'endDate': endDate,
    };
  }

  static Project fromMap(Map<String, dynamic> map) {
    return Project(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      startDate: map['startDate'],
      endDate: map['endDate'],
    );
  }
}