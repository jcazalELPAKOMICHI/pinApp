import 'package:flutter/material.dart';
import 'package:pin_app/core/widgets/picture_dialog.dart';
import 'package:pin_app/features/post_detail/data/model/post_detail_model.dart';

class ItemComment extends StatelessWidget {
  const ItemComment({required this.comment, super.key});
  final PostDetailModel comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:
                      () => PictureDialog.showPictureDialog(
                        context,
                        comment.profileImage!,
                      ),
                  child: CircleAvatar(
                    radius: 21,

                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(comment.profileImage!),
                      radius: 20,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(comment.email, style: TextStyle(fontSize: 12)),
                      Text(
                        comment.name,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "a comentado:",
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(comment.body),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
