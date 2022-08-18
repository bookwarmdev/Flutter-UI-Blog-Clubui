import 'package:blogclubui/core/core.dart';
import 'package:blogclubui/presentation/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: AppStyle.headline4.copyWith(
                      color: AppColor.lightColorScheme.onSecondaryContainer,
                    ),
                  ),
                  SvgPicture.asset("assets/svgs/Overflow.svg"),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color:
                            AppColor.lightColorScheme.outline.withOpacity(0.1)),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 20.0,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 80.0,
                                    margin: const EdgeInsets.only(right: 30.0),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/outlineBg.png",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/placeholder.png",
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "@joviedan",
                                        style: AppStyle.headline6.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        "Jovi Daniel",
                                        style: AppStyle.headline5.copyWith(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "UX Designer",
                                        style: AppStyle.headline5.copyWith(
                                          color:
                                              AppColor.lightColorScheme.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                "About me",
                                style: AppStyle.headline4.copyWith(),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Madison Blackstone is a director of user experience design, with experience managing global teams.",
                                style: AppStyle.headline6.copyWith(
                                  color: AppColor
                                      .lightColorScheme.onSecondaryContainer,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.0,
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -55.0,
                          left: 10.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: 70,
                            decoration: BoxDecoration(
                              color: AppColor.lightColorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                20.0,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColor.lightColorScheme.outline,
                                  offset: const Offset(0, 10),
                                  spreadRadius: 4,
                                  blurRadius: 17,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: AppColor
                                        .lightColorScheme.onSecondaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      20.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "52",
                                        style: AppStyle.headline4.copyWith(
                                          color: AppColor
                                              .lightColorScheme.background,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      Text(
                                        "Post",
                                        style: AppStyle.headline6.copyWith(
                                          color: AppColor
                                              .lightColorScheme.background,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "250",
                                      style: AppStyle.headline4.copyWith(
                                        color: AppColor
                                            .lightColorScheme.background,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    Text(
                                      "Following",
                                      style: AppStyle.headline6.copyWith(
                                        color: AppColor
                                            .lightColorScheme.background,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "4.2k",
                                          style: AppStyle.headline4.copyWith(
                                            color: AppColor
                                                .lightColorScheme.background,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        Text(
                                          "Followers",
                                          style: AppStyle.headline6.copyWith(
                                            color: AppColor
                                                .lightColorScheme.background,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 60.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.lightColorScheme.background,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "My Posts",
                                  style: AppStyle.headline5.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "More",
                                    style: AppStyle.headline6.copyWith(
                                      color: AppColor.lightColorScheme.primary,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 5,
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: InkWell(
                                      onTap: () => Navigator.pushNamed(
                                        context,
                                        BlogClubUi.newsScreen,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          color: AppColor
                                              .lightColorScheme.onPrimary,
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColor
                                                  .lightColorScheme.outline
                                                  .withOpacity(0.2),
                                              offset: const Offset(0, 3),
                                              blurRadius: 5,
                                              spreadRadius: 2,
                                            )
                                          ],
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/images/image.png",
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  5,
                                            ),
                                            const SizedBox(
                                              width: 20.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Big Data".toUpperCase(),
                                                  style: AppStyle.headline5
                                                      .copyWith(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w700,
                                                    color: AppColor
                                                        .lightColorScheme
                                                        .primary,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5.0,
                                                ),
                                                Text(
                                                  "Why Big Data Needs\nThick Data?",
                                                  style: AppStyle.headline6
                                                      .copyWith(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10.0,
                                                ),
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/svgs/Thumbs.svg",
                                                          color: AppColor
                                                              .lightColorScheme
                                                              .onSecondaryContainer,
                                                        ),
                                                        const SizedBox(
                                                          width: 3.0,
                                                        ),
                                                        Text(
                                                          "2.1K",
                                                          style: AppStyle
                                                              .bodyText1
                                                              .copyWith(
                                                            color: AppColor
                                                                .lightColorScheme
                                                                .onSecondaryContainer,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 20.0,
                                                    ),
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/svgs/Time.svg",
                                                          width: 20.0,
                                                        ),
                                                        Text(
                                                          "1hrs ago",
                                                          style: AppStyle
                                                              .bodyText1
                                                              .copyWith(
                                                            color: AppColor
                                                                .lightColorScheme
                                                                .onSecondaryContainer,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 20.0,
                                                    ),
                                                    SvgPicture.asset(
                                                      "assets/svgs/Bookmark_bg.svg",
                                                      width: 20.0,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
