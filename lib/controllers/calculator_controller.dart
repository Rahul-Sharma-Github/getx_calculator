import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var output = ''.obs;
  var temp = ''.obs;
  var num1 = 0.0.obs;
  var num2 = 0.0.obs;
  var operand = ''.obs;

  // Operations

  butttonPressed(String text) {
    // CLEAR Button Logic
    if (text == 'CLEAR') {
      output.value = '';
      temp.value = '';
      num1.value = 0.0;
      num2.value = 0.0;
      operand.value = '';
    }
    // Numeric Button Logic
    else if (text == '+' || text == '-' || text == 'X' || text == '/') {
      //
      num1.value = double.parse(output.value);
      // this operand will be used for calculations purpose on press of = Button
      operand.value = text;
      // clearing temp variable value
      temp.value = '';
    }
    // . button Logic
    else if (text == '.') {
      // if we already added . Button then it will do nothing
      if (temp.value.contains('.')) {
      }
      // if . Button is not there then temp variable value will be updated with . Button
      else {
        temp.value = temp.value + text;
      }
    }
    // = Button Logic
    else if (text == '=') {
      num2.value = double.parse(output.value);
      // checking the operand
      // and then doing the operation according to it
      if (operand.value == '+') {
        temp.value = (num1.value + num2.value).toString();
      }
      if (operand.value == '-') {
        temp.value = (num1.value - num2.value).toString();
      }
      if (operand.value == 'X') {
        temp.value = (num1.value * num2.value).toString();
      }
      if (operand.value == '/') {
        temp.value = (num1.value / num2.value).toString();
      }

      // after operation we have to Reset num1 & num2 & operand variable
      num1.value = 0.0;
      num2.value = 0.0;
      operand.value = '';
    }
    // storing button text in temp variable
    else {
      temp.value = temp.value + text;
    }

    // it will show on Screen after every button press
    // updating our Main Output [output variable] outside of if Loop ( on each button press )
    output.value = temp.value;
  }
}
