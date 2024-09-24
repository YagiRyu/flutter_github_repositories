import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/domain/repository/github_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen_view_model.g.dart';

@riverpod
final class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  Future<GitHubDomainModel> build() async {
    return await ref.watch(gitHubRepositoryProvider).fetchRepositories("Dart");
  }

  Future<void> fetchRepositories(String language) async {
    state = const AsyncLoading();
    final provider = ref.read(gitHubRepositoryProvider);
    try {
      final result = await provider.fetchRepositories(language);
      state = AsyncData(result);
    } on Exception catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
