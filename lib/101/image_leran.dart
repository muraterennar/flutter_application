import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: JpgImage(
                  path: CustomImageItems().macbookImage,
                )),
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
  final String macbookImage = "assets/images/macbookm3.jpeg";
  final String firabaseImage = "https://firebasestorage.googleapis.com/v0/b/file-upload-firebase-d3899.appspot.com/o/test%2FProduct-List-Card.PNG?alt=media&token=4272b5aa-5e70-4a11-8bf4-76a6df049a21";
}

class JpgImage extends StatelessWidget {
  const JpgImage({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, fit: BoxFit.cover);
  }
}
