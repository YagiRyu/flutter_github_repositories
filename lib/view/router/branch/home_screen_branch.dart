import 'package:flutter/material.dart';
import 'package:flutter_github_repositories/domain/model/github_domain_model.dart';
import 'package:flutter_github_repositories/view/screen/detail/detail_screen.dart';
import 'package:flutter_github_repositories/view/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class HomeScreenBranch extends StatefulShellBranchData {
  const HomeScreenBranch();
}

const homeStatefulShellBranch = TypedStatefulShellBranch<HomeScreenBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeScreenRoute>(
      path: HomeScreenRoute.path,
      routes: [
        TypedGoRoute<DetailScreenRoute>(
          path: DetailScreenRoute.path,
        ),
      ],
    ),
  ],
);

class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

  static const path = "/";

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class DetailScreenRoute extends GoRouteData {
  const DetailScreenRoute(this.$extra);
  final RepositoryDomainModel $extra;

  static const path = "detail";

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailScreen(repository: $extra);
  }
}
