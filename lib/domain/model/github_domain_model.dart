import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_domain_model.freezed.dart';

@freezed
class GitHubDomainModel with _$GitHubDomainModel {
  const factory GitHubDomainModel({
    required List<RepositoryDomainModel> repositories,
  }) = _GitHubDomainModel;
}

@freezed
class RepositoryDomainModel with _$RepositoryDomainModel {
  const factory RepositoryDomainModel({
    required int id,
    required String name,
    required OwnerDomainModel owner,
    required String repositoryLink,
    required String description,
    required List<String> topics,
  }) = _RepositoryDomainModel;
}

@freezed
class OwnerDomainModel with _$OwnerDomainModel {
  const factory OwnerDomainModel({
    required int id,
    required String ownerName,
    required String avatarUrl,
    required String ownerProfileLink,
  }) = _OwnerDomainModel;
}
