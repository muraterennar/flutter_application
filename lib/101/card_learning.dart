import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
        const Card(
          margin: ProjectMargin.pageMargin,
          color: Colors.amber,
          shape: StadiumBorder(),
          child: SizedBox(height: 100, width: 200)
          ),
          Card(
          margin: ProjectMargin.pageMargin,
          color: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          child: const SizedBox(
            height: 100, 
            width: 200,
            child: Center(child: Text("Ali")),
          )),
         const  Card(
          margin: ProjectMargin.pageMargin,
          color: Colors.purple,
          shape: CircleBorder(),
          child: SizedBox(height: 100, width: 200))
        ],
      )
    );
  }
}

class ProjectMargin{
  static const pageMargin = EdgeInsets.all(10);
}