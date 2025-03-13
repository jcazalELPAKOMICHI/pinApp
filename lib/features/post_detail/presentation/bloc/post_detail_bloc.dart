import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_detail_state.dart';
part 'post_detail_event.dart';
part 'post_detail_bloc.freezed.dart';

@injectable
class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  PostDetailBloc() : super(const PostDetailState.initial()) {}
}
