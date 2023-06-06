// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/Pages/home_page/home_page_widgets/button.dart';
import 'package:getx_calculator/controllers/calculator_controller.dart';

class HomePage extends GetView<CalculatorController> {
  HomePage({super.key});

  final CalculatorController calculator = Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Obx(
                () => Expanded(
                  child: Text(
                    '${calculator.output}',
                    softWrap: true,
                    maxLines: 5,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Expanded(
            child: Divider(),
          ),
          SizedBox(
            width: Get.width > 680 ? Get.width * 0.6 : Get.width,
            child: Column(
              children: [
                Row(
                  children: [
                    button('7'),
                    button('8'),
                    button('9'),
                    button('/'),
                  ],
                ),
                Row(
                  children: [
                    button('4'),
                    button('5'),
                    button('6'),
                    button('X'),
                  ],
                ),
                Row(
                  children: [
                    button('1'),
                    button('2'),
                    button('3'),
                    button('-'),
                  ],
                ),
                Row(
                  children: [
                    button('.'),
                    button('0'),
                    button('00'),
                    button('+'),
                  ],
                ),
                Row(
                  children: [
                    button('CLEAR'),
                    button('='),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
