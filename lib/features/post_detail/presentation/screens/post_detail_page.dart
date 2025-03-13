import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/features/post/domain/entities/post_entity.dart';
import 'package:pin_app/features/post_detail/presentation/bloc/post_detail_bloc.dart';
import 'package:pin_app/features/post_detail/presentation/widgets/item_comment.dart';
import 'package:pin_app/features/post_detail/presentation/widgets/item_post.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderPost(post: widget.post),
            SizedBox(height: 8),
            BlocBuilder<PostDetailBloc, PostDetailState>(
              builder: (context, state) {
                return Text(
                  '${state.status == PostDetailStatus.loading ? 0 : state.response.length} Comentarios',
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: BlocBuilder<PostDetailBloc, PostDetailState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.status == PostDetailStatus.loading,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ItemComment(comment: state.response[index]);
                        },
                        itemCount: state.response.length,
                        separatorBuilder:
                            (context, index) => Divider(height: 0.5),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
