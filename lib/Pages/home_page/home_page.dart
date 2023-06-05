// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculator'),
      ),
      body: Container(
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('output')],
            )
          ],
        ),
      ),
    );
  }
}
