import 'dart:convert';

import 'package:flutter_github_repositories/data/model/github.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@riverpod
ApiClient apiClient(ApiClientRef ref) {
  return ApiClientImpl();
}

abstract interface class ApiClient {
  Future<GitHub> fetchRepositories(String language);
}

class ApiClientImpl implements ApiClient {
  @override
  Future<GitHub> fetchRepositories(String language) async {
    try {
      final response = await http.get(Uri.parse(
          "https://api.github.com/search/repositories?q=language:$language"));

      if (response.statusCode == 200) {
        final repositories = GitHub.fromJson(jsonDecode(response.body));
        return repositories;
      } else {
        throw Exception("リポジトリデータを取得できませんでした");
      }
    } on http.ClientException catch (_) {
      rethrow;
    }
  }
}
