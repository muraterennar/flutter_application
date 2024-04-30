import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: JpgImage(
                    path: CustomImageItems().placeHolderImage500,
                  )),
            ),
            Image.network(
              CustomImageItems().firabaseImage,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.abc_outlined),
            )
          ],
        ));
  }
}

class CustomImageItems {
  final String placeHolderImage500 = "assets/images/500x500.png";
  final String firabaseImage =
      "https://firebasestorage.googleapis.com/v0/b/file-upload-firebase-d3899.appspot.com/o/test%2FProduct-List-Card.PNG?alt=media&token=4272b5aa-5e70-4a11-8bf4-76a6df049a21";
  final String noteDemosImage = "assets/images/login-img.png";
  final String placeHolderImage200 = "assets/images/200x200.png";
}

class JpgImage extends StatelessWidget {
  const JpgImage({
    super.key,
    required this.path,
    this.width,
    this.height,
    this.borderRadius,
    this.borderWidth = 0.0,
    this.borderColor,
  });

  final String path;
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final double borderWidth;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: borderWidth,
        ),
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.zero,
        child: Image.asset(
          path,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
