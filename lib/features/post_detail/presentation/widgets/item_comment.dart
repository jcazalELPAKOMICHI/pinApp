import 'package:flutter/material.dart';
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
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg',
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
