import 'package:blogclubui/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightColorScheme.secondary,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/CONTENT.png"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          StatusBar(
                            active: true,
                          ),
                          StatusBar(),
                          StatusBar(),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/placeholder3.png",
                                width: 55,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jasmine Levin",
                                    style: AppStyle.bodyText1.copyWith(
                                      color:
                                          AppColor.lightColorScheme.background,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "4m ago",
                                    style: AppStyle.bodyText2.copyWith(
                                      color:
                                          AppColor.lightColorScheme.background,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: SvgPicture.asset("assets/svgs/Close.svg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30.0,
                    ),
                    margin: const EdgeInsets.only(
                      bottom: 30.0,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff8C8C8C).withAlpha(60)),
                    child: Column(
                      children: [
                        Text(
                          "Do You Want To Live A Happy Life? Smile.",
                          style: AppStyle.headline5.copyWith(
                            fontFamily: AppStyle.avenirHeavy,
                            color: AppColor.lightColorScheme.background,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.",
                          style: AppStyle.headline6.copyWith(
                            fontFamily: AppStyle.avenirBook,
                            color: AppColor.lightColorScheme.background,
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: AppColor.lightColorScheme.secondary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 50.0),
                    ),
                    Column(
                      children: [
                        SvgPicture.asset("assets/svgs/Angle-Up.svg"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                            vertical: 15.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: AppColor.lightColorScheme.background,
                          ),
                          child: Text(
                            "Read More",
                            style: AppStyle.headline5.copyWith(
                              color: AppColor.lightColorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/HEART.svg",
                          width: 42,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "450k",
                          style: AppStyle.headline5.copyWith(
                            color: AppColor.lightColorScheme.background,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
    this.active,
  }) : super(key: key);

  final bool? active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: 5.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: active == true
            ? AppColor.lightColorScheme.background
            : AppColor.lightColorScheme.outline.withOpacity(0.5),
      ),
    );
  }
}
