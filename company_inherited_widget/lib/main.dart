import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final String compName = "Veritas";
  final int empCount = 51;

  @override
  Widget build(BuildContext context) {
    return Company(
      compName: compName,
      empCount: empCount,
      child: MaterialApp(
        home: CompanyView(),
      ),
    );
  }
}

class CompanyView extends StatefulWidget {
  const CompanyView({super.key});

  @override
  State<CompanyView> createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  @override
  Widget build(BuildContext context) {
    // Company retObj =context.dependOnInheritedWidgetOfExactType<Company>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CompanyView Inherited Widget",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Company Name: ${Company.of(context).compName}"),
            Text("Company Name: ${Company.of(context).empCount}")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Company.of(context).compName = "Core2Web";

            if (Company.of(context).empCount != 100) {
              
              Company.of(context).empCount++;

            } else {
              
              Company.of(context).empCount = 0;
            
            }
          });
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class Company extends InheritedWidget {
  String compName;
  int empCount;

  Company({
    super.key,
    required this.compName,
    required this.empCount,
    required super.child,
  });

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }

  @override
  bool updateShouldNotify(Company oldWidget) {
    return compName != oldWidget.compName;
  }
}
