import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Column(
          children: [
           _CustomCard(
                child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text("Ali")),
            ))
          ],
        ));
  }
}

class _CustomCard extends StatelessWidget {
  final Widget child;

  const _CustomCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: ProjectMargin.pageMargin,
        child: child);
  }
}

class ProjectMargin {
  static const pageMargin = EdgeInsets.all(10);
}
