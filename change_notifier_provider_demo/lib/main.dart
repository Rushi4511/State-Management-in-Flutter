import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Employee(
          empName: "Rushikesh",
          empId: 1,
          empSal: 10000.00,
        );
      },
      child: const MaterialApp(home: EmployeeView()),
    );
  }
}

class EmployeeView extends StatefulWidget {
  const EmployeeView({super.key});

  @override
  State<EmployeeView> createState() => _EmployeeViewState();
}

class _EmployeeViewState extends State<EmployeeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ChangeNotifier Provider",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Text("Employee ID :${Provider.of<Employee>(context).empId}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            Text("Employee Name : ${Provider.of<Employee>(context).empName}",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20,
            ),
            Text("Employee Salary :${Provider.of<Employee>(context).empSal} ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Employee>(context, listen: false).changeData(25000.00);
        },
      ),
    );
  }
}

class Employee extends ChangeNotifier {
  String empName;
  int empId;
  double empSal;

  Employee({
    required this.empId,
    required this.empName,
    required this.empSal,
  });

  void changeData(double empSal) {
    this.empSal = empSal;
    notifyListeners();
  }
}
