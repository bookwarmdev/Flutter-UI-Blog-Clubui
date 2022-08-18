import 'package:blogclubui/core/core.dart';
import 'package:blogclubui/data/models/status_model.dart';
import 'package:blogclubui/presentation/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Jonathan!",
                    style: AppStyle.headline5.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Explore today’s",
                    style: AppStyle.headline4.copyWith(
                      fontFamily: AppStyle.avenirHeavy,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    SvgPicture.asset("assets/svgs/notification.svg"),
                    Positioned(
                      left: -2.0,
                      child: Container(
                        width: 15.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: AppColor.lightColorScheme.error,
                          border: Border.all(
                            width: 2,
                            color: AppColor.lightColorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 120,
            margin: const EdgeInsets.only(
              top: 30.0,
              bottom: 30.0,
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Status().getAllStatus.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    BlogClubUi.statusScreen,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/outlineBg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/${Status().getAllStatus[index].imagePath}",
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -2,
                                right: -10,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.all(
                                      width: 4,
                                      color:
                                          AppColor.lightColorScheme.background,
                                    ),
                                    color: Status().getAllStatus[index].color,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: SvgPicture.asset(
                                      "assets/svgs/${Status().getAllStatus[index].icon}",
                                      width: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          Status().getAllStatus[index].name,
                          style: AppStyle.caption.copyWith(
                            color:
                                AppColor.lightColorScheme.onSecondaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 280,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: index % 2 == 1
                        ? const EdgeInsets.only(bottom: 20.0)
                        : const EdgeInsets.only(bottom: 5.0, left: 5.0),
                    child: Container(
                      margin: const EdgeInsets.only(
                        right: 30.0,
                      ),
                      width: 236.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: index % 2 == 0
                              ? const AssetImage("assets/images/Card-1.png")
                              : const AssetImage("assets/images/Card-2.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 2,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                            left: 20.0,
                          ),
                          child: Text(
                            index % 2 == 0 ? "Technolgy" : "Adventure",
                            style: AppStyle.headline4.copyWith(
                              color: AppColor.lightColorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Last News",
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
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
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
                        borderRadius: BorderRadius.circular(20.0),
                        color: AppColor.lightColorScheme.onPrimary,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 2,
                            spreadRadius: 1.0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/image.png",
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Big Data".toUpperCase(),
                                style: AppStyle.headline5.copyWith(
                                  fontSize: 14.0,
                                  fontFamily: AppStyle.avenirHeavy,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.lightColorScheme.primary,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Why Big Data Needs\nThick Data?",
                                style: AppStyle.headline6.copyWith(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
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
                                        color: AppColor.lightColorScheme
                                            .onSecondaryContainer,
                                      ),
                                      const SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "2.1K",
                                        style: AppStyle.bodyText1.copyWith(
                                          color: AppColor.lightColorScheme
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
                                        style: AppStyle.bodyText1.copyWith(
                                          color: AppColor.lightColorScheme
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
    );
  }
}
