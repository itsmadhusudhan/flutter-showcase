import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:x/navigation/routes/barrel.dart';

part "app_router.gr.dart";

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: AppRoute.page,
      path: "/",
      children: [
        AutoRoute(
          page: HomeRoute.page,
          path: "home",
          children: [
            AutoRoute(page: TimelineFeedRoute.page, path: "timeline/:id"),
          ],
        ),
        AutoRoute(page: SearchRoute.page, path: "search"),
        AutoRoute(page: MessagesRoute.page, path: "messages"),
        AutoRoute(page: NotificationsRoute.page, path: "notifications"),
        AutoRoute(page: CommunityRoute.page, path: "community"),
      ],
    ),
    AutoRoute(page: SettingsRoute.page, path: "/settings"),
    AutoRoute(page: ProfileRoute.page, path: "/profile/:id"),
    AutoRoute(page: PostRoute.page, path: "/post/:id"),
    AutoRoute(page: SearchResultRoute.page, path: "/search-results"),
    AutoRoute(page: PremiumRoute.page, path: "/premium"),
    AutoRoute(page: ChatRoute.page, path: "/chat"),
    AutoRoute(page: BookmarksRoute.page, path: "/bookmarks"),
    AutoRoute(page: ListsRoute.page, path: "/lists"),
    AutoRoute(page: SpacesRoute.page, path: "/spaces"),
    AutoRoute(page: MonitisationRoute.page, path: "/monitisation"),
  ];
}
