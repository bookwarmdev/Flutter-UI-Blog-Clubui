import 'package:blogclubui/core/colors.dart';
import 'package:blogclubui/core/styles.dart';
import 'package:blogclubui/data/models/onboarding_model.dart';
import 'package:blogclubui/presentation/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageView = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightColorScheme.onPrimary.withOpacity(0.9),
      body: SafeArea(
        child: PageView.builder(
            itemCount: Onboarding().listAllOnboarding.length,
            physics: const NeverScrollableScrollPhysics(),
            controller: pageView,
            itemBuilder: (context, index) {
              return OnBoarding(
                onTap: () {
                  index++;
                  pageView.jumpToPage(index);

                  if (index == 3) {
                    Navigator.pushNamed(
                      context,
                      BlogClubUi.authScreen,
                    );
                  }
                },
                header: Onboarding().listAllOnboarding[index].header ?? "",
                title: Onboarding().listAllOnboarding[index].title ?? "",
                index: index,
              );
            }),
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({
    Key? key,
    required this.onTap,
    required this.header,
    required this.title,
    required this.index,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final String header;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Image.asset("assets/images/IMAGETILES.png"),
            )),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            decoration: BoxDecoration(
              color: AppColor.lightColorScheme.onPrimary,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  header,
                  style: AppStyle.headline1.copyWith(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.lightColorScheme.onPrimaryContainer,
                    fontFamily: AppStyle.avenirHeavy,
                  ),
                ),
                Text(
                  title,
                  style: AppStyle.headline4.copyWith(
                    fontFamily: AppStyle.avenirBook,
                    fontSize: 14.0,
                    color: AppColor.lightColorScheme.primary,
                    letterSpacing: 1.3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          width: index == 0 ? 35.0 : 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            color: index == 0
                                ? AppColor.lightColorScheme.primary
                                : AppColor.lightColorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          width: index == 1 ? 35.0 : 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            color: index == 1
                                ? AppColor.lightColorScheme.primary
                                : AppColor.lightColorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          width: index == 2 ? 35.0 : 12.0,
                          height: 12.0,
                          decoration: BoxDecoration(
                            color: index == 2
                                ? AppColor.lightColorScheme.primary
                                : AppColor.lightColorScheme.inversePrimary,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: onTap,
                      child: Container(
                        width: 88,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColor.lightColorScheme.primary,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: SvgPicture.asset(
                            "assets/svgs/arrow-right.svg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
