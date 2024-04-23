import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Murat Eren Nar";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
           const TitleWidget(
            title: title,
          ),
          _sizedBox(),
           const TitleWidget(
            title: title,
          ),
          _sizedBox(),
           const TitleWidget(
            title: title,
          ),
          const _CustomContainer(),
          _sizedBox(),
        ],
      ),
    );
  }

  SizedBox _sizedBox() => const SizedBox(height: 10);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.deepPurple),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headlineLarge);
  }
}
