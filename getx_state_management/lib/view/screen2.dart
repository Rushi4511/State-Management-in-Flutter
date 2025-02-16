import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/employee_controller.dart';
import 'package:getx_state_management/model/Employee.dart';
import 'package:getx_state_management/view/screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  // EmployeeController employeeController = Get.find();

  EmployeeController employeeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX State Management"),
      ),
      body: Column(
        children: [
          Obx(() {
            return Column(
              children: [
                Text("${employeeController.empObj.value.empId}"),
                const SizedBox(height: 10),
                Text(employeeController.empObj.value.empName),
                const SizedBox(height: 10),
                Text(employeeController.empObj.value.projName),
                const SizedBox(height: 10),
                Text(employeeController.empObj.value.empDept),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("Go Back"))
              ],
            );
          })
        ],
      ),
    );
  }
}
