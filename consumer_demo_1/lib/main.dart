import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
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
      home:ConsumerApp(),
    ),
    );
  }
}
