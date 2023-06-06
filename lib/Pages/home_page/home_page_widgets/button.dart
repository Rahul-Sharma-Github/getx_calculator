import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';

CalculatorController calculator = Get.find<CalculatorController>();

Widget button(String text) {
  return Expanded(
    child: OutlinedButton(
      onPressed: () {
        calculator.butttonPressed(text);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22.0,
          ),
        ),
      ),
    ),
  );
}
