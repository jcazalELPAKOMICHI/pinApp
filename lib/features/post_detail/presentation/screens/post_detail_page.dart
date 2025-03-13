import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';
import 'package:pin_app/features/post_detail/presentation/bloc/post_detail_bloc.dart';

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
  void initState() {
    super.initState();
    context.read<PostDetailBloc>().add(
      PostDetailEvent.getComments(widget.post.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff2F315A),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<PostDetailBloc, PostDetailState>(
              builder: (context, state) {
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
