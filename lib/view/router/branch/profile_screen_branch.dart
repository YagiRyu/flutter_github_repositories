import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_github_repositories/view/screen/profile/profile_screen.dart';
import 'package:go_router/go_router.dart';

class ProfileScreenBranch extends StatefulShellBranchData {
  const ProfileScreenBranch();
}

const profileStatefulShellBranch =
    TypedStatefulShellBranch<ProfileScreenBranch>(
        routes: <TypedRoute<RouteData>>[
      TypedGoRoute<ProfileScreenRoute>(
        path: ProfileScreenRoute.path,
      )
    ]);

class ProfileScreenRoute extends GoRouteData {
  const ProfileScreenRoute();

  static const path = "/profile";

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}
