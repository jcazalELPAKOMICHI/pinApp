import 'package:flutter/material.dart';

class PictureDialog {
  static Future<void> showPictureDialog(
    BuildContext context,
    String imageUrl,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 150,
          ),
        );
      },
    );
  }
}
