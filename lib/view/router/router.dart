import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/router/branch/home_screen_branch.dart';
import 'package:flutter_github_repositories/view/router/branch/profile_screen_branch.dart';
import 'package:flutter_github_repositories/view/screen/error/error_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@riverpod
GoRouter router(RouterRef ref) => GoRouter(
    routes: $appRoutes,
    navigatorKey: _rootNavigatorKey,
    errorBuilder: (BuildContext context, GoRouterState state) {
      return ErrorRoute(error: state.error!).build(context, state);
    });

@TypedStatefulShellRoute<MainShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    homeStatefulShellBranch,
    profileStatefulShellBranch,
  ],
)
class MainShellRouteData extends StatefulShellRouteData {
  const MainShellRouteData();

  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return BottomNavigationBar(navigationShell: navigationShell);
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}

class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final Exception error;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ErrorScreen(exception: error);
  }
}
