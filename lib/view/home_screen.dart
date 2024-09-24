import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/view/view_model/home_screen_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenViewModelProvider);

    Future<void> refresh() async {
      ref
          .read(homeScreenViewModelProvider.notifier)
          .fetchRepositories("Kotlin");
    }

    return state.when(
      data: (data) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: refresh,
            child: ListView.builder(
              itemCount: state.value?.repositories.length,
              itemBuilder: (context, index) {
                final repository = data.repositories[index];
                return ListTile(
                  title: Text(repository.name),
                );
              },
            ),
          ),
        );
      },
      error: (error, stackTrace) {
        return const Text("Error");
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
