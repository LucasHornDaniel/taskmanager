import 'package:flutter/material.dart';
import 'package:task_manger/views/create/client_page.dart';
import 'package:task_manger/views/create/department_page.dart';
import 'package:task_manger/views/create/employee_page.dart';
import 'package:task_manger/views/home_page.dart';
import 'package:task_manger/views/create/project_page.dart';
import 'package:task_manger/views/create/task_page.dart';


import 'company_page.dart';


class MenuDrawer extends StatelessWidget {
  final String title;

  MenuDrawer({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text('Funcionários'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmployeePage()),
                );
              },
            ),
            ListTile(
              title: Text('Departamentos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DepartmentPage()),
                );
              },
            ),
            ListTile(
              title: Text('Projetos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProjectPage()),
                );
              },
            ),
            ListTile(
              title: Text('Clientes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClientPage()),
                );
              },
            ),
            ListTile(
              title: Text('Tarefas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskPage()),
                );
              },
            ),
            ListTile(
              title: Text('Empresa'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CompanyPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Página inicial'),
      ),
    );
  }
}