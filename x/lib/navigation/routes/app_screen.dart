import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/rendering.dart';
import 'package:heroicons/heroicons.dart';

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
              drawer: Drawer(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DrawerHeader(child: Text("Drawer Header")),
                      ListTile(title: Text("First Tab")),
                      ListTile(title: Text("Second Tab")),
                    ],
                  ),
                ),
              ),
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
