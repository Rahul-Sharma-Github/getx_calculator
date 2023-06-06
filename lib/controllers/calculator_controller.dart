import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var output = ''.obs;
  var temp = '0'.obs;
  var num1 = 0.0.obs;
  var num2 = 0.0.obs;
  var operand = ''.obs;

  // Operations

  butttonPressed(String text) {
    if (text == 'CLEAR') {
      output.value = '';
      temp.value = '';
      num1.value = 0;
      num2.value = 0;
      operand.value = '';
    }
  }
}
