import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';
import 'package:pin_app/features/post/presentation/widgets/item_post.dart';
import 'package:pin_app/features/post/presentation/widgets/post_search.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PostPage extends StatelessWidget {
  static const routeName = '/';
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _PostPage();
  }
}

class _PostPage extends StatefulWidget {
  const _PostPage();

  @override
  State<_PostPage> createState() => __PostPageState();
}

class __PostPageState extends State<_PostPage> {
  @override
  void initState() {
    super.initState();
    context.read<PostBloc>().add(PostEvent.getAllPost());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PostSearch(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<PostBloc, PostState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state.status == PostStatus.loading,
                      child: RefreshIndicator(
                        onRefresh:
                            () async => context.read<PostBloc>().add(
                              PostEvent.getAllPost(),
                            ),
                        child: ListView.separated(
                          separatorBuilder:
                              (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                child: Divider(
                                  height: 0.1,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                          itemBuilder: (context, index) {
                            return ItemPost(post: state.searchResult[index]);
                          },
                          itemCount: state.searchResult.length,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
