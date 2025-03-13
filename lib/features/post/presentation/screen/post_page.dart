import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';
import 'package:pin_app/features/post/presentation/widgets/post_search.dart';

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
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              PostSearch(),

              Expanded(
                child: BlocBuilder<PostBloc, PostState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.searchResult[index].title),
                        );
                      },
                      itemCount: state.searchResult.length,
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
