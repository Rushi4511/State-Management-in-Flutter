import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Employee(
            empId: 1, empName: "Rushi", projDomain: "Java Developer");
      },
      child: MaterialApp(
        home: ProviderApp(),
      ),
    );
  }
}

class ProviderApp extends StatefulWidget {
  const ProviderApp({super.key});

  @override
  State<ProviderApp> createState() => _ProviderAppState();
}

class _ProviderAppState extends State<ProviderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROVIDER",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Text(Provider.of<Employee>(context).empName,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text("Employee ID:${Provider.of<Employee>(context).empId}",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          Text(Provider.of<Employee>(context).projDomain,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Employee>(
            context, /*listen: false*/
          ).projDomain = "SpringBoot";
          setState(() {});
        },
      ),
    );
  }
}

class Employee {
  String empName;
  int empId;
  String projDomain;

  Employee(
      {required this.empId, required this.empName, required this.projDomain});
}
