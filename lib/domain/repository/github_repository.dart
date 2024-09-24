import 'package:flutter_github_repositories/data/api/api_client.dart';
import 'package:flutter_github_repositories/data/repository/github_repository.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_repository.g.dart';

@riverpod
GitHubRepository gitHubRepository(GitHubRepositoryRef ref) {
  return GitHubRepositoryImpl(ref.watch(apiClientProvider));
}

abstract interface class GitHubRepository {
  Future<GitHubDomainModel> fetchRepositories(String language);
}
