import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'my_database.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE employees(
            id INTEGER PRIMARY KEY,
            first_name TEXT,
            last_name TEXT,
            address TEXT,
            phone_number TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE departments(
            id INTEGER PRIMARY KEY,
            name TEXT,
            description TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE projects(
            id INTEGER PRIMARY KEY,
            name TEXT,
            description TEXT,
            start_date TEXT,
            end_date TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE clients(
            id INTEGER PRIMARY KEY,
            first_name TEXT,
            last_name TEXT,
            address TEXT,
            phone_number TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE tasks(
            id INTEGER PRIMARY KEY,
            description TEXT,
            start_date TEXT,
            end_date TEXT,
            status TEXT,
            employee_id INTEGER,
            department_id INTEGER,
            project_id INTEGER,
            client_id INTEGER,
            FOREIGN KEY (employee_id) REFERENCES employees(id),
            FOREIGN KEY (department_id) REFERENCES departments(id),
            FOREIGN KEY (project_id) REFERENCES projects(id),
            FOREIGN KEY (client_id) REFERENCES clients(id)
          )
        ''');
      },
      version: 1,
    );
  }
}
