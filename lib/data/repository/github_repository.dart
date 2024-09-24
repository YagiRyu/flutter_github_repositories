import 'package:flutter_github_repositories/data/api/api_client.dart';
import 'package:flutter_github_repositories/domain/model/domain_model_mapper.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/domain/repository/github_repository.dart';

class GitHubRepositoryImpl implements GitHubRepository {
  const GitHubRepositoryImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<GitHubDomainModel> fetchRepositories(String language) async {
    try {
      final response = await _apiClient.fetchRepositories(language);
      print(response.mapToDomainModel());
      return response.mapToDomainModel();
    } on Exception catch (_) {
      rethrow;
    }
  }
}
