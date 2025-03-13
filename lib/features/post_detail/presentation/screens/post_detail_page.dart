import 'package:flutter/material.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({required this.post, super.key});
  static const routeName = '/postDetail';
  final PostEntity post;
  @override
  Widget build(BuildContext context) {
    return _PostDetailPage(post: post);
  }
}

class _PostDetailPage extends StatefulWidget {
  const _PostDetailPage({required this.post});
  final PostEntity post;

  @override
  State<_PostDetailPage> createState() => __PostDetailPageState();
}

class __PostDetailPageState extends State<_PostDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff2F315A),
        foregroundColor: Colors.white,
      ),
      body: Column(),
    );
  }
}
