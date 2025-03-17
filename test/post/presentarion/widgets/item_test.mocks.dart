// Mocks generated by Mockito 5.4.5 from annotations
// in pin_app/test/post/presentarion/widgets/item_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:bloc/bloc.dart' as _i7;
import 'package:hydrated_bloc/hydrated_bloc.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;
import 'package:pin_app/core/theme/bloc/theme_bloc.dart' as _i4;
import 'package:pin_app/features/post/domain/entities/post_entity.dart' as _i10;
import 'package:pin_app/features/post/domain/repositories/post_repository.dart'
    as _i5;
import 'package:pin_app/features/post/domain/use_case/post_use_case.dart'
    as _i2;
import 'package:pin_app/features/post/presentation/bloc/post_bloc.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePostUseCase_0 extends _i1.SmartFake implements _i2.PostUseCase {
  _FakePostUseCase_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakePostState_1 extends _i1.SmartFake implements _i3.PostState {
  _FakePostState_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeThemeState_2 extends _i1.SmartFake implements _i4.ThemeState {
  _FakeThemeState_2(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakePostRepository_3 extends _i1.SmartFake
    implements _i5.PostRepository {
  _FakePostRepository_3(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [PostBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostBloc extends _i1.Mock implements _i3.PostBloc {
  MockPostBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostUseCase get useCase =>
      (super.noSuchMethod(
            Invocation.getter(#useCase),
            returnValue: _FakePostUseCase_0(this, Invocation.getter(#useCase)),
          )
          as _i2.PostUseCase);

  @override
  _i3.PostState get state =>
      (super.noSuchMethod(
            Invocation.getter(#state),
            returnValue: _FakePostState_1(this, Invocation.getter(#state)),
          )
          as _i3.PostState);

  @override
  _i6.Stream<_i3.PostState> get stream =>
      (super.noSuchMethod(
            Invocation.getter(#stream),
            returnValue: _i6.Stream<_i3.PostState>.empty(),
          )
          as _i6.Stream<_i3.PostState>);

  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);

  @override
  void add(_i3.PostEvent? event) => super.noSuchMethod(
    Invocation.method(#add, [event]),
    returnValueForMissingStub: null,
  );

  @override
  void onEvent(_i3.PostEvent? event) => super.noSuchMethod(
    Invocation.method(#onEvent, [event]),
    returnValueForMissingStub: null,
  );

  @override
  void emit(_i3.PostState? state) => super.noSuchMethod(
    Invocation.method(#emit, [state]),
    returnValueForMissingStub: null,
  );

  @override
  void on<E extends _i3.PostEvent>(
    _i7.EventHandler<E, _i3.PostState>? handler, {
    _i7.EventTransformer<E>? transformer,
  }) => super.noSuchMethod(
    Invocation.method(#on, [handler], {#transformer: transformer}),
    returnValueForMissingStub: null,
  );

  @override
  void onTransition(_i7.Transition<_i3.PostEvent, _i3.PostState>? transition) =>
      super.noSuchMethod(
        Invocation.method(#onTransition, [transition]),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> close() =>
      (super.noSuchMethod(
            Invocation.method(#close, []),
            returnValue: _i6.Future<void>.value(),
            returnValueForMissingStub: _i6.Future<void>.value(),
          )
          as _i6.Future<void>);

  @override
  void onChange(_i7.Change<_i3.PostState>? change) => super.noSuchMethod(
    Invocation.method(#onChange, [change]),
    returnValueForMissingStub: null,
  );

  @override
  void addError(Object? error, [StackTrace? stackTrace]) => super.noSuchMethod(
    Invocation.method(#addError, [error, stackTrace]),
    returnValueForMissingStub: null,
  );

  @override
  void onError(Object? error, StackTrace? stackTrace) => super.noSuchMethod(
    Invocation.method(#onError, [error, stackTrace]),
    returnValueForMissingStub: null,
  );
}

/// A class which mocks [ThemeBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockThemeBloc extends _i1.Mock implements _i4.ThemeBloc {
  MockThemeBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.ThemeState get state =>
      (super.noSuchMethod(
            Invocation.getter(#state),
            returnValue: _FakeThemeState_2(this, Invocation.getter(#state)),
          )
          as _i4.ThemeState);

  @override
  _i6.Stream<_i4.ThemeState> get stream =>
      (super.noSuchMethod(
            Invocation.getter(#stream),
            returnValue: _i6.Stream<_i4.ThemeState>.empty(),
          )
          as _i6.Stream<_i4.ThemeState>);

  @override
  bool get isClosed =>
      (super.noSuchMethod(Invocation.getter(#isClosed), returnValue: false)
          as bool);

  @override
  String get id =>
      (super.noSuchMethod(
            Invocation.getter(#id),
            returnValue: _i8.dummyValue<String>(this, Invocation.getter(#id)),
          )
          as String);

  @override
  String get storagePrefix =>
      (super.noSuchMethod(
            Invocation.getter(#storagePrefix),
            returnValue: _i8.dummyValue<String>(
              this,
              Invocation.getter(#storagePrefix),
            ),
          )
          as String);

  @override
  String get storageToken =>
      (super.noSuchMethod(
            Invocation.getter(#storageToken),
            returnValue: _i8.dummyValue<String>(
              this,
              Invocation.getter(#storageToken),
            ),
          )
          as String);

  @override
  _i4.ThemeState? fromJson(Map<String, dynamic>? json) =>
      (super.noSuchMethod(Invocation.method(#fromJson, [json]))
          as _i4.ThemeState?);

  @override
  Map<String, dynamic>? toJson(_i4.ThemeState? state) =>
      (super.noSuchMethod(Invocation.method(#toJson, [state]))
          as Map<String, dynamic>?);

  @override
  void add(_i4.ThemeEvent? event) => super.noSuchMethod(
    Invocation.method(#add, [event]),
    returnValueForMissingStub: null,
  );

  @override
  void onEvent(_i4.ThemeEvent? event) => super.noSuchMethod(
    Invocation.method(#onEvent, [event]),
    returnValueForMissingStub: null,
  );

  @override
  void emit(_i4.ThemeState? state) => super.noSuchMethod(
    Invocation.method(#emit, [state]),
    returnValueForMissingStub: null,
  );

  @override
  void on<E extends _i4.ThemeEvent>(
    _i7.EventHandler<E, _i4.ThemeState>? handler, {
    _i7.EventTransformer<E>? transformer,
  }) => super.noSuchMethod(
    Invocation.method(#on, [handler], {#transformer: transformer}),
    returnValueForMissingStub: null,
  );

  @override
  void onTransition(
    _i7.Transition<_i4.ThemeEvent, _i4.ThemeState>? transition,
  ) => super.noSuchMethod(
    Invocation.method(#onTransition, [transition]),
    returnValueForMissingStub: null,
  );

  @override
  _i6.Future<void> close() =>
      (super.noSuchMethod(
            Invocation.method(#close, []),
            returnValue: _i6.Future<void>.value(),
            returnValueForMissingStub: _i6.Future<void>.value(),
          )
          as _i6.Future<void>);

  @override
  void onChange(_i7.Change<_i4.ThemeState>? change) => super.noSuchMethod(
    Invocation.method(#onChange, [change]),
    returnValueForMissingStub: null,
  );

  @override
  void addError(Object? error, [StackTrace? stackTrace]) => super.noSuchMethod(
    Invocation.method(#addError, [error, stackTrace]),
    returnValueForMissingStub: null,
  );

  @override
  void onError(Object? error, StackTrace? stackTrace) => super.noSuchMethod(
    Invocation.method(#onError, [error, stackTrace]),
    returnValueForMissingStub: null,
  );

  @override
  void hydrate({_i9.Storage? storage}) => super.noSuchMethod(
    Invocation.method(#hydrate, [], {#storage: storage}),
    returnValueForMissingStub: null,
  );

  @override
  _i6.Future<void> clear() =>
      (super.noSuchMethod(
            Invocation.method(#clear, []),
            returnValue: _i6.Future<void>.value(),
            returnValueForMissingStub: _i6.Future<void>.value(),
          )
          as _i6.Future<void>);
}

/// A class which mocks [PostUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostUseCase extends _i1.Mock implements _i2.PostUseCase {
  MockPostUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.PostRepository get repository =>
      (super.noSuchMethod(
            Invocation.getter(#repository),
            returnValue: _FakePostRepository_3(
              this,
              Invocation.getter(#repository),
            ),
          )
          as _i5.PostRepository);

  @override
  List<_i10.PostEntity> get mockLoader =>
      (super.noSuchMethod(
            Invocation.getter(#mockLoader),
            returnValue: <_i10.PostEntity>[],
          )
          as List<_i10.PostEntity>);

  @override
  _i6.Future<List<_i10.PostEntity>> getAllPost() =>
      (super.noSuchMethod(
            Invocation.method(#getAllPost, []),
            returnValue: _i6.Future<List<_i10.PostEntity>>.value(
              <_i10.PostEntity>[],
            ),
          )
          as _i6.Future<List<_i10.PostEntity>>);

  @override
  List<_i10.PostEntity> updateLike(
    List<_i10.PostEntity>? searchResult,
    int? id,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#updateLike, [searchResult, id]),
            returnValue: <_i10.PostEntity>[],
          )
          as List<_i10.PostEntity>);
}
