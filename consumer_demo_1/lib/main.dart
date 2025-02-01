import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Employee(
            empName: "Kanha",
            empId: 50,
          );
        }),
        ChangeNotifierProvider(create: (context) {
          return Project(projDom: "HealthCare", devType: "BackendDev");
        }),
      ],
      child: const MaterialApp(
        home: ConsumerApp(),
      ),
    );
  }
}

class ConsumerApp extends StatefulWidget {
  const ConsumerApp({super.key});

  @override
  State<ConsumerApp> createState() => _ConsumerAppState();
}

class _ConsumerAppState extends State<ConsumerApp> {
  @override
  Widget build(BuildContext context) {
    log("In MainApp Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Provider"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Provider.of<Employee>(context).empName),
          const SizedBox(
            height: 20,
          ),
          Text("Emp Id:  ${Provider.of<Employee>(context).empId}"),
          const SizedBox(
            height: 20,
          ),

          Text(Provider.of<Project>(context).projDom),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(Provider.of<Project>(context).devType),
                  const SizedBox(
                    height: 20,
                  )
          ,
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<Project>(context,listen: false).changeData("EdTech", "Flutter");
            },
            child: Text("Change Data"),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

// Normal Class

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("In Normal Class Build");
    return const Text("Hello");
  }
}

class Project extends ChangeNotifier {
  String projDom;
  String devType;

  Project({required this.projDom, required this.devType});

  void changeData(String projDom, String devtype) {
    this.projDom = projDom;
    this.devType = devType;
    notifyListeners();
  }
}

class Employee {
  String empName;
  int empId;

  Employee({required this.empName, required this.empId});
}
