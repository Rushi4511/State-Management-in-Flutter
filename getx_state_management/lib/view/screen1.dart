import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/controller/employee_controller.dart';
import 'package:getx_state_management/model/Employee.dart';
import 'package:getx_state_management/view/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  // EmployeeController employeeController = Get.find();

  EmployeeController employeeController = Get.put(EmployeeController());

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
                      employeeController.changeData(
                          "Information Technology", "JavaFX");

                      Get.to(() => Screen2());
                    },
                    child: Text("ChangeData"))
              ],
            );
          })
        ],
      ),
    );
  }
}
