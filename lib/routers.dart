import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'create_screen.dart';
import 'list_screen.dart';


final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ListScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'create_screen',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateScreen();
          },
        ),
      ],
    ),
  ],
);