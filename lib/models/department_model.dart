class Department {
  int? id;
  String name;
  String description;

  Department({this.id, required this.name, required this.description});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  static Department fromMap(Map<String, dynamic> map) {
    return Department(
      id: map['id'],
      name: map['name'],
      description: map['description'],
    );
  }
}