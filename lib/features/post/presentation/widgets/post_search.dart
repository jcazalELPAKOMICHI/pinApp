import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';

class PostSearch extends StatelessWidget {
  PostSearch({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        return TextField(
          autocorrect: false,

          textInputAction: TextInputAction.done,
          controller: _textController,
          onChanged: (value) {
            _searchText(context);
          },
          onSubmitted: (value) {
            _searchText(context);
          },

          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            prefixIcon: Icon(Icons.search),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[800]),
            hintText: "Type in your text",
            fillColor: Colors.white70,
            suffixIcon: IconButton(
              onPressed: () {
                _textController.clear();
                _searchText(context);
              },
              icon: Icon(Icons.close),
            ),
          ),
        );
      },
    );
  }

  void _searchText(BuildContext context) {
    context.read<PostBloc>().add(PostEvent.searchList(_textController.text));
  }
}
