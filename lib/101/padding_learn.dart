import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVeritical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: Container(color: Colors.black26, height: 200)),
            Padding(
                padding: const EdgeInsets.all(16),
                child: Container(color: Colors.black26, height: 200)),

            Padding(
                padding: ProjectPadding.pagePaddingRightOnly +
                    ProjectPadding.pagePaddingVeritical,
                child: Container(color: Colors.black26, height: 200)),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 42),
            //   child: Container(color: Colors.black26, height: 200),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 16, right: 42),
            //   child: Container(color: Colors.black26, height: 200),
            // ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVeritical = EdgeInsets.all(16);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
