import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_app/core/extensions/theme_extension.dart';
import 'package:pin_app/core/routes/app_route_import.dart';
import 'package:pin_app/core/widgets/picture_dialog.dart';
import 'package:pin_app/core/widgets/readmore.dart';
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart';

class ItemPost extends StatelessWidget {
  const ItemPost({required this.post, super.key});
  final PostEntity post;
  @override
  Widget build(BuildContext context) {
    final imageURL =
        'https://media.istockphoto.com/id/183285756/photo/waiting.jpg?s=612x612&w=0&k=20&c=SD1vv6goaFvQZo9ojhHqJpZ8vpLUVYxud5EBLMgSMlI=';

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
                        () =>
                            PictureDialog.showPictureDialog(context, imageURL),
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor:
                          context.isDarkModeR ? Colors.white : Colors.black,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imageURL),
                        radius: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '@Caroline',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          post.title.trim(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(height: 8),
                        ReadMoreText(
                          post.body.trim(),
                          trimLength: 100,
                          trimLines: 2,
                          trimCollapsedText: ' Ver más',
                          trimExpandedText: ' Ver menos',

                          colorClickableText: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: TextButton.icon(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pushNamed(PostDetailPage.routeName, arguments: post);
                    context.read<PostBloc>().add(PostEvent.selectPost(post));
                  },
                  icon: const Icon(Icons.comment, color: Colors.blue),

                  label: const Text(
                    'Ver comentarios',
                    style: TextStyle(color: Colors.blue),
                  ),
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
              Icon(
                Icons.favorite_border_outlined,
                color: Colors.purpleAccent,
                size: 18,
              ),
              Text(
                ' ${post.favorite} Like',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
