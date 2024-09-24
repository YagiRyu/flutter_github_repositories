import 'dart:convert';

import 'package:flutter_github_repositories/data/model/github.dart';
import 'package:flutter_github_repositories/model/result.dart';
import 'package:http/http.dart' as http;

abstract interface class ApiClient {
  Future<Result<GitHub, Exception>> fetchRepositories(String language);
}

class ApiClientImpl implements ApiClient {
  @override
  Future<Result<GitHub, Exception>> fetchRepositories(String language) async {
    try {
      final response = await http.get(Uri.parse(
          "https://api.github.com/search/repositories?q=language:$language"));

      if (response.statusCode == 200) {
        final repositories = GitHub.fromJson(jsonDecode(response.body));
        return Success(repositories);
      } else {
        return Failure(Exception(response.reasonPhrase));
      }
    } on http.ClientException catch (e) {
      return Failure(e);
    }
  }
}
