import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:icons_plus/icons_plus.dart' show Brand, Brands;
import 'package:x/navigation/app_router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = ["For You", "Following", "Rust Programming Language"];

    return AutoTabsRouter.tabBar(
      routes: tabs.map((e) => TimelineFeedRoute(id: e)).toList(),
      builder: (context, child, controller) {
        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    return true;
                  },
                  child: SliverAppBar(
                    floating: true,
                    snap: true,
                    title: Brand(Brands.twitterx),
                    centerTitle: true,
                    elevation: 0,
                    bottom: TabBar(
                      onTap: (value) {
                        controller.animateTo(value);
                      },
                      controller: controller,
                      tabs: tabs.map((e) => Tab(text: e)).toList(),
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                    ),
                    leading: InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: CircleAvatar(
                          foregroundImage: CachedNetworkImageProvider(
                            "https://avatar.iran.liara.run/public/43",
                          ),
                          backgroundColor: Colors.white,
                          radius: 15,
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(Icons.settings_outlined),
                        onPressed: () {
                          context.navigateToPath("/settings");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: child,
        );
      },
    );
  }
}
