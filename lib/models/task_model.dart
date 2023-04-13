class Task {
  int? id;
  String description;
  String startDate;
  String endDate;
  String status;
  int employeeId;
  int departmentId;
  int projectId;
  int clientId;

  Task({
    this.id, required this.description,required this.startDate,required this.endDate,required this.status,required this.employeeId,required this.departmentId,required this.projectId,required this.clientId,
  }) {
    // TODO: implement 
    throw UnimplementedError();
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'start_date': startDate,
      'end_date': endDate,
      'status': status,
      'employee_id': employeeId,
      'department_id': departmentId,
      'project_id': projectId,
      'client_id': clientId,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      description: map['description'],
      startDate: map['start_date'],
      endDate: map['end_date'],
      status: map['status'],
      employeeId: map['employee_id'],
      departmentId: map['department_id'],
      projectId: map['project_id'],
      clientId: map['client_id'],
    );
  }
}