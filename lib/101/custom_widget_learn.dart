import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: const Column(
        children: [
          Text("Custom Widget Learn"),
        ],
      ),
    );
  }
}