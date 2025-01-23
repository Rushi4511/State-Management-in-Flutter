import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Employee extends InheritedWidget {
  final String empName;
  final int empId;
  double empSalary;

  Employee({
    super.key,
    required this.empId,
    required this.empName,
    required this.empSalary,
    required super.child,
  });

  static Employee of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Employee>()!;
  }

  @override
  bool updateShouldNotify(Employee oldWidget) {
    return empId != oldWidget.empId;
  }
}
