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
                    'https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8YXZhdGFyfGVufDB8fDB8fHww',
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
