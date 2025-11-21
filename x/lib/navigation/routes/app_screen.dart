import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/rendering.dart';
import 'package:heroicons/heroicons.dart';
import 'package:icons_plus/icons_plus.dart' show Brand, Brands;

import 'package:x/navigation/app_router.dart';

@RoutePage()
class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen>
    with SingleTickerProviderStateMixin {
  bool _isVisible = true;

  void _scrollListener(ScrollDirection scrollDirection) {
    if (scrollDirection == ScrollDirection.reverse) {
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    } else if (scrollDirection == ScrollDirection.forward) {
      if (!_isVisible) {
        setState(() {
          _isVisible = true;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoTabsRouter(
        routes: [
          HomeRoute(),
          SearchRoute(),
          CommunityRoute(),
          NotificationsRoute(),
          MessagesRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);

          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.axis == Axis.vertical &&
                  notification.depth == 0) {
                _scrollListener(notification.direction);
              }

              return false;
            },
            child: Scaffold(
              extendBody: true,
              body: child,
              drawer: AppDrawer(),
              floatingActionButton: AnimatedScale(
                scale: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 300),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
              ),
              bottomNavigationBar: AnimatedSlide(
                curve: Curves.easeInOut,
                offset: _isVisible ? Offset(0, 0) : Offset(0, 1),
                duration: Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey.shade400, width: 0.4),
                    ),
                  ),
                  child: BottomNavigationBar(
                    currentIndex: tabsRouter.activeIndex,
                    onTap: (index) {
                      tabsRouter.setActiveIndex(index);
                    },
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined),
                        label: '',
                        activeIcon: Icon(Icons.home_filled),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search_outlined),
                        label: "",
                        activeIcon: Icon(Icons.search),
                      ),
                      BottomNavigationBarItem(
                        icon: HeroIcon(
                          HeroIcons.userGroup,
                          style: HeroIconStyle.outline,
                        ),
                        label: "",
                        activeIcon: HeroIcon(
                          HeroIcons.userGroup,
                          style: HeroIconStyle.solid,
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: HeroIcon(
                          HeroIcons.bell,
                          style: HeroIconStyle.outline,
                        ),
                        label: "",
                        activeIcon: HeroIcon(
                          HeroIcons.bell,
                          style: HeroIconStyle.solid,
                        ),
                      ),
                      BottomNavigationBarItem(
                        icon: HeroIcon(
                          HeroIcons.envelope,
                          style: HeroIconStyle.outline,
                        ),
                        label: "",
                        activeIcon: HeroIcon(
                          HeroIcons.envelope,
                          style: HeroIconStyle.solid,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
      width: size.width * 0.8,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              context.navigateTo(ProfileRoute(id: 'itsmadhusudhan'));
            },
            child: DrawerHeader(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      "https://avatar.iran.liara.run/public/43",
                    ),
                  ),
                  Text(
                    "Madhusudhan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text("@itsmadhusudhan", style: TextStyle(fontSize: 14)),
                  SizedBox(height: 12),
                  Row(
                    spacing: 8,
                    children: [Text("1k Followers"), Text("1k Following")],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                return true;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person_outline),
                      title: Text("Profile"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(ProfileRoute(id: 'itsmadhusudhan'));
                      },
                    ),
                    ListTile(
                      leading: Brand(Brands.twitterx, size: 24),
                      title: Text("Premium"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(PremiumRoute());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.chat_outlined),
                      title: Text("Chat"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(ChatRoute());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.bookmark_outline_outlined),
                      title: Text("Bookmarks"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(BookmarksRoute());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.list_alt),
                      title: Text("Lists"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(ListsRoute());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.mic_outlined),
                      title: Text("Spaces"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(SpacesRoute());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.money),
                      title: Text("Monitisation"),
                      onTap: () {
                        Navigator.of(context).pop();
                        context.navigateTo(MonitisationRoute());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
