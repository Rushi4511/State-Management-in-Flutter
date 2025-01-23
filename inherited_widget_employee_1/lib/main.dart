import 'package:flutter/material.dart';
import 'package:inherited_widget_employee_1/controller/employee_controller.dart';
import 'package:inherited_widget_employee_1/view/employee_screen_1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final String empName = "Rushi";
  final int empId = 1;
  final double empSalary = 2.0;

  @override
  Widget build(BuildContext context) {
    return Employee(
      empId: empId,
      empName: empName,
      empSalary: empSalary,
      child: const MaterialApp(
        home: EmployeeScreen1(),
      ),
    );
  }
}
