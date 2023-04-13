import 'package:flutter/material.dart';

class EmployeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Funcionários'),
      ),
      body: Center(
        child: Text('Página de Funcionários'),
      ),
    );
  }
}