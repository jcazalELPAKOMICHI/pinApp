import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/routes/app_route_import.dart';
import 'package:pin_app/core/widgets/picture_dialog.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';

class HeaderPost extends StatelessWidget {
  const HeaderPost({required this.post, super.key});
  final PostEntity post;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,

      children: [
        Container(
          margin: EdgeInsets.zero,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap:
                        () => PictureDialog.showPictureDialog(
                          context,
                          post.profilePicture!,
                        ),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 19,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(post.profilePicture!),
                        radius: 18,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    post.name!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title.trim(),

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(post.body.trim(), textAlign: TextAlign.start),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlocBuilder<PostBloc, PostState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.purpleAccent,
                      size: 24,
                    ),
                    iconSize: 24,
                    onPressed: () {
                      context.read<PostBloc>().add(
                        PostEvent.updateFavorite(post.id),
                      );
                    },
                    padding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  );
                },
              ),

              BlocBuilder<PostBloc, PostState>(
                builder: (context, state) {
                  return Text(
                    ' ${state.post!.favorite} Like',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
