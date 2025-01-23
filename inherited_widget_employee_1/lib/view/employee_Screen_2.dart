import 'package:flutter/material.dart';

import '../controller/employee_controller.dart';

class EmployeeScreen2 extends StatefulWidget {
  const EmployeeScreen2({super.key});

  @override
  State<EmployeeScreen2> createState() => _EmployeeScreen2State();
}

class _EmployeeScreen2State extends State<EmployeeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inherited Widget 1",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Employee ID :${Employee.of(context).empId}"),
            Text("Employee Name :${Employee.of(context).empName}"),
            Text("Employee Salary :${Employee.of(context).empSalary}")
          ],
        ),
      ),
    );
  }
}
