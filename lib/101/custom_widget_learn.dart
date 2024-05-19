import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String text = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodBtn(text: text, onPressed: () {  },),
              )
            ),
          ),
         const SizedBox(height: 60),
         CustomFoodBtn(text: text, onPressed: () {  },)
        ],
      ),
    );
  }
}

mixin _ColorsUtility {
  // Define your color-related utilities here
  Color get primaryColor => Colors.blue;
  Color get secondaryColor => Colors.green;
  Color get whiteColor => Colors.white;
}

mixin _PaddingUtility {
  // Define your padding-related utilities here
  EdgeInsets get smallPadding => const EdgeInsets.all(8.0);
  EdgeInsets get largePadding => const EdgeInsets.all(16.0);
  EdgeInsets get defaultHorizontalPadding =>
      const EdgeInsets.symmetric(horizontal: 16.0);
}

class CustomFoodBtn extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodBtn({super.key, required this.text, required this.onPressed});

  final String text;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(),
      child: Text(text, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: whiteColor, fontWeight: FontWeight.bold)),
    );
  }
}
