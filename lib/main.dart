import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/Pages/home_page/home_page.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends GetView<CalculatorController> {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
