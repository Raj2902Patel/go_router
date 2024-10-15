import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_package/pages/404.dart';
import 'package:go_router_package/pages/about.dart';
import 'package:go_router_package/pages/contact.dart';
import 'package:go_router_package/pages/home.dart';
import 'package:go_router_package/pages/profile.dart';
import 'package:go_router_package/projects/routes/app_router_const.dart';

class MyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    final GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstant.homeRoteName,
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          },
        ),
        GoRoute(
          name: MyAppRouteConstant.aboutRouterName,
          path: '/about',
          builder: (BuildContext context, GoRouterState state) {
            return About(data: state.extra as Map<String, dynamic>);
          },
        ),
        GoRoute(
          name: MyAppRouteConstant.profileRouteName,
          path: '/profile/:username/:userId',
          builder: (BuildContext context, GoRouterState state) {
            return Profile(
              username: state.pathParameters['username']!,
              userId: state.pathParameters['userId']!,
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstant.contactRouteName,
          path: '/contact',
          builder: (BuildContext context, GoRouterState state) {
            return const Contact();
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(child: ErrorPage());
      },
      redirect: (context, state) {
        final isAuthenticated = isAuth;
        final goingToProfile = state.matchedLocation.startsWith("/profile");

        if (!isAuthenticated && goingToProfile) {
          return '/contact'; // return path to redirect to
        }
        return null;
      },
    );
    return router;
  }
}
