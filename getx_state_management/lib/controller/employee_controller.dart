import 'package:get/get.dart';
import 'package:getx_state_management/model/Employee.dart';

class EmployeeController extends GetxController {
  Rx<Employee> empObj = Employee(
          empDept: "Computer", empId: 2, empName: "Rushi", projName: "Fitbeast")
      .obs;

  void changeData(String empName, String empDept) {
    empObj.update((obj) {
      obj!.empName = empName;
      obj.empDept = empDept;
    });
  }
}
