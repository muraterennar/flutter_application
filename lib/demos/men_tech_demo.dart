import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/101/image_leran.dart';

class MenTechDemo extends StatelessWidget {
  const MenTechDemo({super.key});

  final String _title = "Company Name";
  final String _login = "Login";
  final String _register = "Register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.allPadding,
        child: Column(
          children: [
            JpgImage(path: CustomImageItems().noteDemosImage),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JpgImage(
                  path: CustomImageItems().placeHolderImage200,
                  width: 125,
                  borderColor: Colors.indigo[400],
                  borderWidth: 4,
                  borderRadius: BorderRadius.circular(100),
                ),
                Padding(
                  padding: PaddingItems.verticalPadding,
                  child: _CustomTextWidget(
                      text: _title, style: CustomTextStyle.titleStyle),
                ),
              ],
            ),
            const Spacer(),
            _CustomElevateBtnWidget(login: _login),
            TextButton(onPressed: (){}, child: 
              _CustomTextWidget(
                text: _register,
                style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

class _CustomElevateBtnWidget extends StatelessWidget {
  const _CustomElevateBtnWidget({
    required String login,
  }) : _login = login;

  final String _login;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo[400],
        ),
        child: SizedBox(
          height: CustomButtonHeights.buttonBigHeight,
          child: Center(
            child: _CustomTextWidget(
              text: _login,
              style: const TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.blueGrey),
            ),
          ),
        ));
  }
}

class PaddingItems {
  static const EdgeInsets horizantalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);

  static const EdgeInsets allPadding = EdgeInsets.all(45);
}

class CustomTextStyle {
  static const TextStyle titleStyle =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black);
}

class CustomButtonHeights {
  static const double buttonBigHeight = 50;
  static const double buttonMediumHeight = 30;
  static const double buttonSmallHeight = 20;
}

class _CustomTextWidget extends StatelessWidget {
  const _CustomTextWidget({required this.text, this.style});

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: style?.color ?? Colors.black,
              fontSize: style?.fontSize,
              fontWeight: style?.fontWeight,
            ));
  }
}
