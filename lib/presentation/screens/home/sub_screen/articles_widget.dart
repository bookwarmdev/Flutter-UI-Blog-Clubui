import 'package:blogclubui/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Acticle",
                    style: AppStyle.headline4.copyWith(
                      color: AppColor.lightColorScheme.onSecondaryContainer,
                    ),
                  ),
                  SvgPicture.asset("assets/svgs/Download.svg"),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                "The art of beign an actist",
                style: AppStyle.headline5.copyWith(
                  fontFamily: AppStyle.avenirHeavy,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                height: 2.5,
                color: AppColor.lightColorScheme.outline.withOpacity(0.3),
                margin: const EdgeInsets.only(top: 4.0, bottom: 20.0),
              ),
              Text(
                "Slimplifed products",
                style: AppStyle.headline5.copyWith(
                  fontFamily: AppStyle.avenirHeavy,
                ),
              ),
              Container(
                height: 2.5,
                color: AppColor.lightColorScheme.outline.withOpacity(0.3),
                margin: const EdgeInsets.only(top: 4.0, bottom: 20.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Wrap(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 5.0,
                      top: 16.0,
                    ),
                    child: Text(
                      "Add Tags",
                      style: AppStyle.bodyText1.copyWith(
                        color: AppColor.lightColorScheme.primary,
                        fontWeight: FontWeight.w800,
                        fontSize: 14.0,
                        fontFamily: AppStyle.avenirHeavy,
                      ),
                    ),
                  ),
                  const Tags(
                    title: "Art",
                  ),
                  const Tags(
                    title: "Desgin",
                  ),
                  const Tags(
                    title: "Cultrue",
                  ),
                  const Tags(
                    title: "Production",
                  ),
                ],
              ),
              Text(
                "Article Content",
                style: AppStyle.headline5.copyWith(
                  fontFamily: AppStyle.avenirHeavy,
                ),
              ),
              Container(
                height: 2.5,
                color: AppColor.lightColorScheme.outline.withOpacity(0.3),
                margin: const EdgeInsets.only(top: 4.0, bottom: 20.0),
              ),
              Text(
                "This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny.",
                style: AppStyle.headline5.copyWith(
                  fontFamily: AppStyle.avenirRoman,
                  fontSize: 14.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10.0,
        right: 10.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: AppColor.lightColorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(
          50.0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppStyle.bodyText1.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColor.lightColorScheme.primary,
              fontSize: 12.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.lightColorScheme.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SvgPicture.asset(
                    "assets/svgs/Close.svg",
                    color: AppColor.lightColorScheme.primary,
                    width: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
