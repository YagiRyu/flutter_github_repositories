// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GitHubDomainModel {
  List<RepositoryDomainModel> get repositories =>
      throw _privateConstructorUsedError;

  /// Create a copy of GitHubDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubDomainModelCopyWith<GitHubDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubDomainModelCopyWith<$Res> {
  factory $GitHubDomainModelCopyWith(
          GitHubDomainModel value, $Res Function(GitHubDomainModel) then) =
      _$GitHubDomainModelCopyWithImpl<$Res, GitHubDomainModel>;
  @useResult
  $Res call({List<RepositoryDomainModel> repositories});
}

/// @nodoc
class _$GitHubDomainModelCopyWithImpl<$Res, $Val extends GitHubDomainModel>
    implements $GitHubDomainModelCopyWith<$Res> {
  _$GitHubDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
  }) {
    return _then(_value.copyWith(
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryDomainModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubDomainModelImplCopyWith<$Res>
    implements $GitHubDomainModelCopyWith<$Res> {
  factory _$$GitHubDomainModelImplCopyWith(_$GitHubDomainModelImpl value,
          $Res Function(_$GitHubDomainModelImpl) then) =
      __$$GitHubDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RepositoryDomainModel> repositories});
}

/// @nodoc
class __$$GitHubDomainModelImplCopyWithImpl<$Res>
    extends _$GitHubDomainModelCopyWithImpl<$Res, _$GitHubDomainModelImpl>
    implements _$$GitHubDomainModelImplCopyWith<$Res> {
  __$$GitHubDomainModelImplCopyWithImpl(_$GitHubDomainModelImpl _value,
      $Res Function(_$GitHubDomainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositories = null,
  }) {
    return _then(_$GitHubDomainModelImpl(
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<RepositoryDomainModel>,
    ));
  }
}

/// @nodoc

class _$GitHubDomainModelImpl implements _GitHubDomainModel {
  const _$GitHubDomainModelImpl(
      {required final List<RepositoryDomainModel> repositories})
      : _repositories = repositories;

  final List<RepositoryDomainModel> _repositories;
  @override
  List<RepositoryDomainModel> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  @override
  String toString() {
    return 'GitHubDomainModel(repositories: $repositories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubDomainModelImpl &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_repositories));

  /// Create a copy of GitHubDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubDomainModelImplCopyWith<_$GitHubDomainModelImpl> get copyWith =>
      __$$GitHubDomainModelImplCopyWithImpl<_$GitHubDomainModelImpl>(
          this, _$identity);
}

abstract class _GitHubDomainModel implements GitHubDomainModel {
  const factory _GitHubDomainModel(
          {required final List<RepositoryDomainModel> repositories}) =
      _$GitHubDomainModelImpl;

  @override
  List<RepositoryDomainModel> get repositories;

  /// Create a copy of GitHubDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubDomainModelImplCopyWith<_$GitHubDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RepositoryDomainModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  OwnerDomainModel get owner => throw _privateConstructorUsedError;
  String get repositoryLink => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepositoryDomainModelCopyWith<RepositoryDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDomainModelCopyWith<$Res> {
  factory $RepositoryDomainModelCopyWith(RepositoryDomainModel value,
          $Res Function(RepositoryDomainModel) then) =
      _$RepositoryDomainModelCopyWithImpl<$Res, RepositoryDomainModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      OwnerDomainModel owner,
      String repositoryLink,
      String description,
      List<String> topics});

  $OwnerDomainModelCopyWith<$Res> get owner;
}

/// @nodoc
class _$RepositoryDomainModelCopyWithImpl<$Res,
        $Val extends RepositoryDomainModel>
    implements $RepositoryDomainModelCopyWith<$Res> {
  _$RepositoryDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? repositoryLink = null,
    Object? description = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerDomainModel,
      repositoryLink: null == repositoryLink
          ? _value.repositoryLink
          : repositoryLink // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OwnerDomainModelCopyWith<$Res> get owner {
    return $OwnerDomainModelCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RepositoryDomainModelImplCopyWith<$Res>
    implements $RepositoryDomainModelCopyWith<$Res> {
  factory _$$RepositoryDomainModelImplCopyWith(
          _$RepositoryDomainModelImpl value,
          $Res Function(_$RepositoryDomainModelImpl) then) =
      __$$RepositoryDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      OwnerDomainModel owner,
      String repositoryLink,
      String description,
      List<String> topics});

  @override
  $OwnerDomainModelCopyWith<$Res> get owner;
}

/// @nodoc
class __$$RepositoryDomainModelImplCopyWithImpl<$Res>
    extends _$RepositoryDomainModelCopyWithImpl<$Res,
        _$RepositoryDomainModelImpl>
    implements _$$RepositoryDomainModelImplCopyWith<$Res> {
  __$$RepositoryDomainModelImplCopyWithImpl(_$RepositoryDomainModelImpl _value,
      $Res Function(_$RepositoryDomainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? owner = null,
    Object? repositoryLink = null,
    Object? description = null,
    Object? topics = null,
  }) {
    return _then(_$RepositoryDomainModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as OwnerDomainModel,
      repositoryLink: null == repositoryLink
          ? _value.repositoryLink
          : repositoryLink // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$RepositoryDomainModelImpl implements _RepositoryDomainModel {
  const _$RepositoryDomainModelImpl(
      {required this.id,
      required this.name,
      required this.owner,
      required this.repositoryLink,
      required this.description,
      required final List<String> topics})
      : _topics = topics;

  @override
  final int id;
  @override
  final String name;
  @override
  final OwnerDomainModel owner;
  @override
  final String repositoryLink;
  @override
  final String description;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'RepositoryDomainModel(id: $id, name: $name, owner: $owner, repositoryLink: $repositoryLink, description: $description, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDomainModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.repositoryLink, repositoryLink) ||
                other.repositoryLink == repositoryLink) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, owner, repositoryLink,
      description, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDomainModelImplCopyWith<_$RepositoryDomainModelImpl>
      get copyWith => __$$RepositoryDomainModelImplCopyWithImpl<
          _$RepositoryDomainModelImpl>(this, _$identity);
}

abstract class _RepositoryDomainModel implements RepositoryDomainModel {
  const factory _RepositoryDomainModel(
      {required final int id,
      required final String name,
      required final OwnerDomainModel owner,
      required final String repositoryLink,
      required final String description,
      required final List<String> topics}) = _$RepositoryDomainModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  OwnerDomainModel get owner;
  @override
  String get repositoryLink;
  @override
  String get description;
  @override
  List<String> get topics;

  /// Create a copy of RepositoryDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepositoryDomainModelImplCopyWith<_$RepositoryDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OwnerDomainModel {
  int get id => throw _privateConstructorUsedError;
  String get ownerName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get ownerProfileLink => throw _privateConstructorUsedError;

  /// Create a copy of OwnerDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerDomainModelCopyWith<OwnerDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerDomainModelCopyWith<$Res> {
  factory $OwnerDomainModelCopyWith(
          OwnerDomainModel value, $Res Function(OwnerDomainModel) then) =
      _$OwnerDomainModelCopyWithImpl<$Res, OwnerDomainModel>;
  @useResult
  $Res call(
      {int id, String ownerName, String avatarUrl, String ownerProfileLink});
}

/// @nodoc
class _$OwnerDomainModelCopyWithImpl<$Res, $Val extends OwnerDomainModel>
    implements $OwnerDomainModelCopyWith<$Res> {
  _$OwnerDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OwnerDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerName = null,
    Object? avatarUrl = null,
    Object? ownerProfileLink = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ownerProfileLink: null == ownerProfileLink
          ? _value.ownerProfileLink
          : ownerProfileLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerDomainModelImplCopyWith<$Res>
    implements $OwnerDomainModelCopyWith<$Res> {
  factory _$$OwnerDomainModelImplCopyWith(_$OwnerDomainModelImpl value,
          $Res Function(_$OwnerDomainModelImpl) then) =
      __$$OwnerDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String ownerName, String avatarUrl, String ownerProfileLink});
}

/// @nodoc
class __$$OwnerDomainModelImplCopyWithImpl<$Res>
    extends _$OwnerDomainModelCopyWithImpl<$Res, _$OwnerDomainModelImpl>
    implements _$$OwnerDomainModelImplCopyWith<$Res> {
  __$$OwnerDomainModelImplCopyWithImpl(_$OwnerDomainModelImpl _value,
      $Res Function(_$OwnerDomainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OwnerDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerName = null,
    Object? avatarUrl = null,
    Object? ownerProfileLink = null,
  }) {
    return _then(_$OwnerDomainModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      ownerProfileLink: null == ownerProfileLink
          ? _value.ownerProfileLink
          : ownerProfileLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OwnerDomainModelImpl implements _OwnerDomainModel {
  const _$OwnerDomainModelImpl(
      {required this.id,
      required this.ownerName,
      required this.avatarUrl,
      required this.ownerProfileLink});

  @override
  final int id;
  @override
  final String ownerName;
  @override
  final String avatarUrl;
  @override
  final String ownerProfileLink;

  @override
  String toString() {
    return 'OwnerDomainModel(id: $id, ownerName: $ownerName, avatarUrl: $avatarUrl, ownerProfileLink: $ownerProfileLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerDomainModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.ownerProfileLink, ownerProfileLink) ||
                other.ownerProfileLink == ownerProfileLink));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ownerName, avatarUrl, ownerProfileLink);

  /// Create a copy of OwnerDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerDomainModelImplCopyWith<_$OwnerDomainModelImpl> get copyWith =>
      __$$OwnerDomainModelImplCopyWithImpl<_$OwnerDomainModelImpl>(
          this, _$identity);
}

abstract class _OwnerDomainModel implements OwnerDomainModel {
  const factory _OwnerDomainModel(
      {required final int id,
      required final String ownerName,
      required final String avatarUrl,
      required final String ownerProfileLink}) = _$OwnerDomainModelImpl;

  @override
  int get id;
  @override
  String get ownerName;
  @override
  String get avatarUrl;
  @override
  String get ownerProfileLink;

  /// Create a copy of OwnerDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerDomainModelImplCopyWith<_$OwnerDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
