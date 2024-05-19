import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CenteredCircularProgressIndicator()],
      ),
      body: const Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

mixin _ColorsUtility {
  final Color defaultColor = Colors.amber;
}

class CenteredCircularProgressIndicator extends StatelessWidget
    with _ColorsUtility {
  CenteredCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: defaultColor,
      ),
    );
  }
}
