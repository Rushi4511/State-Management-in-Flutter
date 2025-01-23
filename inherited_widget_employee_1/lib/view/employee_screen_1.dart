import 'package:flutter/material.dart';
import 'package:inherited_widget_employee_1/view/employee_Screen_2.dart';

import '../controller/employee_controller.dart';

class EmployeeScreen1 extends StatefulWidget {
  const EmployeeScreen1({super.key});

  @override
  State<EmployeeScreen1> createState() => _EmployeeScreen1State();
}

class _EmployeeScreen1State extends State<EmployeeScreen1> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Employee.of(context).empSalary = 5.0;
          });
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return EmployeeScreen2();
          }));
        },
        backgroundColor: Colors.black,
      ),
    );
  }
}
