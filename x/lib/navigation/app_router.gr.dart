// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AppScreen]
class AppRoute extends PageRouteInfo<void> {
  const AppRoute({List<PageRouteInfo>? children})
    : super(AppRoute.name, initialChildren: children);

  static const String name = 'AppRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppScreen();
    },
  );
}

/// generated route for
/// [BookmarksScreen]
class BookmarksRoute extends PageRouteInfo<void> {
  const BookmarksRoute({List<PageRouteInfo>? children})
    : super(BookmarksRoute.name, initialChildren: children);

  static const String name = 'BookmarksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BookmarksScreen();
    },
  );
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatScreen();
    },
  );
}

/// generated route for
/// [CommunityScreen]
class CommunityRoute extends PageRouteInfo<void> {
  const CommunityRoute({List<PageRouteInfo>? children})
    : super(CommunityRoute.name, initialChildren: children);

  static const String name = 'CommunityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CommunityScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [ListsScreen]
class ListsRoute extends PageRouteInfo<void> {
  const ListsRoute({List<PageRouteInfo>? children})
    : super(ListsRoute.name, initialChildren: children);

  static const String name = 'ListsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ListsScreen();
    },
  );
}

/// generated route for
/// [MessagesScreen]
class MessagesRoute extends PageRouteInfo<void> {
  const MessagesRoute({List<PageRouteInfo>? children})
    : super(MessagesRoute.name, initialChildren: children);

  static const String name = 'MessagesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MessagesScreen();
    },
  );
}

/// generated route for
/// [MonitisationScreen]
class MonitisationRoute extends PageRouteInfo<void> {
  const MonitisationRoute({List<PageRouteInfo>? children})
    : super(MonitisationRoute.name, initialChildren: children);

  static const String name = 'MonitisationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MonitisationScreen();
    },
  );
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
    : super(NotificationsRoute.name, initialChildren: children);

  static const String name = 'NotificationsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotificationsScreen();
    },
  );
}

/// generated route for
/// [PostScreen]
class PostRoute extends PageRouteInfo<PostRouteArgs> {
  PostRoute({Key? key, required String id, List<PageRouteInfo>? children})
    : super(
        PostRoute.name,
        args: PostRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'PostRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PostRouteArgs>(
        orElse: () => PostRouteArgs(id: pathParams.getString('id')),
      );
      return PostScreen(key: args.key, id: args.id);
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PostRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [PremiumScreen]
class PremiumRoute extends PageRouteInfo<void> {
  const PremiumRoute({List<PageRouteInfo>? children})
    : super(PremiumRoute.name, initialChildren: children);

  static const String name = 'PremiumRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PremiumScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({Key? key, required String id, List<PageRouteInfo>? children})
    : super(
        ProfileRoute.name,
        args: ProfileRouteArgs(key: key, id: id),
        rawPathParams: {'id': id},
        initialChildren: children,
      );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProfileRouteArgs>(
        orElse: () => ProfileRouteArgs(id: pathParams.getString('id')),
      );
      return ProfileScreen(key: args.key, id: args.id);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProfileRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [SearchResultScreen]
class SearchResultRoute extends PageRouteInfo<void> {
  const SearchResultRoute({List<PageRouteInfo>? children})
    : super(SearchResultRoute.name, initialChildren: children);

  static const String name = 'SearchResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchResultScreen();
    },
  );
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
    },
  );
}

/// generated route for
/// [SpacesScreen]
class SpacesRoute extends PageRouteInfo<void> {
  const SpacesRoute({List<PageRouteInfo>? children})
    : super(SpacesRoute.name, initialChildren: children);

  static const String name = 'SpacesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SpacesScreen();
    },
  );
}

/// generated route for
/// [TimelineFeedScreen]
class TimelineFeedRoute extends PageRouteInfo<TimelineFeedRouteArgs> {
  TimelineFeedRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
         TimelineFeedRoute.name,
         args: TimelineFeedRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'TimelineFeedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TimelineFeedRouteArgs>(
        orElse: () => TimelineFeedRouteArgs(id: pathParams.getString('id')),
      );
      return TimelineFeedScreen(key: args.key, id: args.id);
    },
  );
}

class TimelineFeedRouteArgs {
  const TimelineFeedRouteArgs({this.key, required this.id});

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'TimelineFeedRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TimelineFeedRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}
