import 'package:blogclubui/core/core.dart';
import 'package:blogclubui/presentation/screens/home/sub_screen/articles_widget.dart';
import 'package:floating_bottom_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'sub_screen/home_widget.dart';

enum Screen {
  home,
  articles,
  search,
  menu,
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 1;
  var currentScreen = Screen.home;

  @override
  void initState() {
    super.initState();
    setState(() {
      pageIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Screen.home == currentScreen
              ? const Home()
              : Screen.articles == currentScreen
                  ? const Articles()
                  : Screen.search == currentScreen
                      ? const Home()
                      : Screen.search == currentScreen
                          ? const Home()
                          : const Text("data"),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        bottomBarItems: [
          BottomBarItemsModel(
            icon: SvgPicture.asset("assets/nav/Home.svg"),
            iconSelected: SvgPicture.asset("assets/nav/Home.svg"),
            title: "Home",
            titleStyle: AppStyle.button.copyWith(
              color: AppColor.lightColorScheme.onPrimaryContainer,
            ),
            dotColor: AppColor.lightColorScheme.onPrimaryContainer,
            onTap: () => setState(
              () {
                currentScreen = Screen.home;
              },
            ),
          ),
          BottomBarItemsModel(
            icon: SvgPicture.asset("assets/nav/Articles.svg"),
            iconSelected: SvgPicture.asset("assets/nav/Articles.svg"),
            title: "Articles",
            titleStyle: AppStyle.button.copyWith(
              color: AppColor.lightColorScheme.onPrimaryContainer,
            ),
            dotColor: AppColor.lightColorScheme.onPrimaryContainer,
            onTap: () => setState(
              () {
                currentScreen = Screen.articles;
              },
            ),
          ),
          // BottomBarItemsModel(
          //   icon: SvgPicture.asset("assets/nav/Articles.svg"),
          //   iconSelected: SvgPicture.asset("assets/nav/Articles.svg"),
          //   title: "Articles",
          //   titleStyle: AppStyle.button.copyWith(
          //     color: AppColor.lightColorScheme.onPrimaryContainer,
          //   ),
          //   dotColor: AppColor.lightColorScheme.onPrimaryContainer,
          //   onTap: () => setState(
          //     () {
          //       currentScreen = Screen.articles;
          //     },
          //   ),
          // ),
          BottomBarItemsModel(
            icon: SvgPicture.asset("assets/nav/Search.svg"),
            iconSelected: SvgPicture.asset("assets/nav/Search.svg"),
            title: "Search",
            titleStyle: AppStyle.button.copyWith(
              color: AppColor.lightColorScheme.onPrimaryContainer,
            ),
            dotColor: AppColor.lightColorScheme.onPrimaryContainer,
            onTap: () => setState(
              () {
                currentScreen = Screen.search;
              },
            ),
          ),
          BottomBarItemsModel(
            icon: SvgPicture.asset("assets/nav/Menu.svg"),
            iconSelected: SvgPicture.asset("assets/nav/Menu.svg"),
            title: "Menu",
            titleStyle: AppStyle.button.copyWith(
              color: AppColor.lightColorScheme.onPrimaryContainer,
            ),
            dotColor: AppColor.lightColorScheme.onPrimaryContainer,
            onTap: () => setState(
              () {
                currentScreen = Screen.search;
              },
            ),
          ),
        ],
        bottomBarCenterModel: BottomBarCenterModel(
          centerBackgroundColor: AppColor.lightColorScheme.onSecondaryContainer,
          centerIcon: FloatingCenterButton(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColor.lightColorScheme.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/nav/plus.svg"),
              ),
            ),
          ),
          centerIconChild: [
            FloatingCenterButtonChild(
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Scale.svg"),
                ),
              ),
            ),
            FloatingCenterButtonChild(
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Link.svg"),
                ),
              ),
            ),
            FloatingCenterButtonChild(
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Align.svg"),
                ),
              ),
            ),
            FloatingCenterButtonChild(
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Play.svg"),
                ),
              ),
            ),
            FloatingCenterButtonChild(
              child: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svgs/Image.svg"),
                ),
              ),
            ),
            // FloatingCenterButtonChild(
            //   child: SvgPicture.asset("assets/svgs/Scale.svg"),
            //   onTap: () {},
            // ),
            // FloatingCenterButtonChild(
            //   child: SvgPicture.asset("assets/svgs/Link.svg"),
            //   onTap: () {},
            // ),
            // FloatingCenterButtonChild(
            //   child: SvgPicture.asset("assets/svgs/Align.svg"),
            //   onTap: () {},
            // ),
            // FloatingCenterButtonChild(
            //   child: SvgPicture.asset("assets/svgs/Play.svg"),
            //   onTap: () {},
            // ),
            // FloatingCenterButtonChild(
            //   child: SvgPicture.asset("assets/svgs/Image.svg"),
            //   onTap: () {},
            // ),
            FloatingCenterButtonChild(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: AppColor.lightColorScheme.onPrimary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/svgs/Close.svg",
                      color: AppColor.lightColorScheme.onSecondaryContainer,
                    ),
                  )),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
