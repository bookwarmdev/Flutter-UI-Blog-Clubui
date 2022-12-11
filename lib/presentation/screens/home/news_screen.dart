import 'package:blogclubui/core/core.dart';
import 'package:blogclubui/presentation/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key, this.index}) : super(key: key);
  final String? index;

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 120,
        height: 50,
        decoration: BoxDecoration(
          color: AppColor.lightColorScheme.primary,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: AppColor.lightColorScheme.primary,
              spreadRadius: 1,
              offset: const Offset(0, 1),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svgs/Thumbs.svg"),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "2.1k",
              style: AppStyle.headline6.copyWith(
                color: AppColor.lightColorScheme.background,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: SvgPicture.asset(
                                "assets/svgs/Chevron-Left.svg"),
                          ),
                          SvgPicture.asset("assets/svgs/Overflow.svg"),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Four Things Every Woman\nNeeds To Know",
                        style: AppStyle.headline4.copyWith(
                          fontFamily: AppStyle.avenirHeavy,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () => Navigator.pushNamed(
                                  context,
                                  BlogClubUi.profileScreen,
                                ),
                                child: Image.asset(
                                  "assets/images/placeholder3.png",
                                  width: 55,
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Richard Gervain",
                                    style: AppStyle.bodyText1.copyWith(
                                      color: AppColor.lightColorScheme
                                          .onSecondaryContainer,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "2m ago",
                                    style: AppStyle.bodyText2.copyWith(
                                      color: AppColor.lightColorScheme
                                          .onSecondaryContainer,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset("assets/svgs/Send.svg"),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    "assets/svgs/Bookmark.svg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Hero(
                          tag: "news1",
                          child: Image.asset(
                            "assets/images/image4.png",
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "A ${widget.index} man’s sexuality is never your mind responsibility.",
                                style: AppStyle.headline4.copyWith(
                                  fontFamily: AppStyle.avenirHeavy,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor
                                      .lightColorScheme.onSecondaryContainer,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.",
                                style: AppStyle.headline4.copyWith(
                                  fontFamily: AppStyle.avenirRoman,
                                  fontSize: 14.0,
                                  color: AppColor
                                      .lightColorScheme.onPrimaryContainer,
                                ),
                              ),
                              Text(
                                "This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.",
                                style: AppStyle.headline4.copyWith(
                                  fontFamily: AppStyle.avenirRoman,
                                  fontSize: 14.0,
                                  color: AppColor
                                      .lightColorScheme.onPrimaryContainer,
                                ),
                              ),
                              const SizedBox(
                                height: 50.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.2),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
