import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:heroicons/heroicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:icons_plus/icons_plus.dart' hide HeroIcons;

import 'package:x/styles/theme.dart';

class X extends StatelessWidget {
  const X({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  void _scrollListener() {
    if (_scrollController.offset <= 5) {
      return;
    }
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      if (_isVisible) {
        setState(() {
          _isVisible = false;
        });
      }
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            _scrollListener();
          }
          return false;
        },
        child: NestedScrollView(
          controller: _scrollController,
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: SliverAppBar(
                  floating: true,
                  snap: true,
                  title: Brand(Brands.twitterx),
                  centerTitle: true,
                  elevation: 0,
                  bottom: TabBar(
                    onTap: (value) {
                      _tabController.animateTo(value);
                    },
                    controller: _tabController,
                    tabs: const [
                      Tab(text: "For you"),
                      Tab(text: "Following"),
                      Tab(text: "Rust Programming Language"),
                    ],
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
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Builder(
            builder: (context) {
              return TabBarView(
                controller: _tabController,
                children: [
                  Builder(
                    builder: (context) {
                      return CustomScrollView(
                        slivers: [
                          SliverOverlapInjector(
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context,
                                ),
                          ),
                          SliverList.builder(
                            // padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return ListTile(title: Text("First Tab $index"));
                            },
                            // separatorBuilder: (context, index) => Divider(height: 0),
                            itemCount: 100,
                          ),
                        ],
                      );
                    },
                  ),

                  ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return ListTile(title: Text("Second Tab $index"));
                    },
                    separatorBuilder: (context, index) => Divider(height: 0),
                    itemCount: 100,
                  ),

                  Rust(),
                ],
              );
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(child: Text("Drawer Header")),
              ListTile(title: Text("First Tab")),
              ListTile(title: Text("Second Tab")),
              ListTile(title: Text("Rust")),
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedScale(
        scale: _isVisible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 300),
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
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
            currentIndex: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
                activeIcon: Icon(Icons.home),
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
                icon: HeroIcon(HeroIcons.bell, style: HeroIconStyle.outline),
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
    );
  }
}

class Rust extends StatefulWidget {
  const Rust({super.key});

  @override
  State<Rust> createState() => _RustState();
}

class _RustState extends State<Rust> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Rust')));
  }
}
