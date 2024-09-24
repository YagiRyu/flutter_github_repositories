import 'package:freezed_annotation/freezed_annotation.dart';

part 'github.freezed.dart';
part 'github.g.dart';

@freezed
class GitHub with _$GitHub {
  @JsonSerializable(explicitToJson: true)
  const factory GitHub({
    required List<Repository> items,
  }) = _GitHub;

  factory GitHub.fromJson(Map<String, dynamic> json) => _$GitHubFromJson(json);
}

@freezed
class Repository with _$Repository {
  @JsonSerializable(explicitToJson: true)
  const factory Repository({
    required int id,
    required String name,
    required Owner owner,
    required String htmlUrl,
    @Default('') String description,
    @Default([]) List<String> topics,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    required int id,
    required String login,
    required String avatarUrl,
    required String url,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
