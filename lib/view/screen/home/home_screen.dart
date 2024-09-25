import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/view/screen/home/home_screen_list.dart';
import 'package:flutter_github_repositories/view/view_model/home_screen_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(homeScreenViewModelProvider, (_, state) {
      state.whenOrNull(
        error: (error, stackTrace) {
          _showMyDialog(context);
        },
      );
    });

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
            child: HomeScreenList(
              itemCount: data.repositories.length,
              repositories: data.repositories,
            ),
          ),
        );
      },
      error: (_, __) {
        return const SizedBox.shrink();
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

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const AlertDialog(
        content: Center(
          child: CircularProgressIndicator(),
        ),
      );
    },
  );
}
