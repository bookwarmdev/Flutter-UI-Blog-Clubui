import 'package:flutter/material.dart';

import 'core/core.dart';
import 'presentation/routers/router.dart';
import 'presentation/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(themeBrightness: true).getThemeData!.copyWith(
            textTheme: const TextTheme(
              headline1: AppStyle.headline1,
              headline2: AppStyle.headline2,
              headline3: AppStyle.headline3,
              headline4: AppStyle.headline4,
              headline5: AppStyle.headline5,
              headline6: AppStyle.headline6,
              subtitle1: AppStyle.subtitle1,
              subtitle2: AppStyle.subtitle2,
              bodyText1: AppStyle.bodyText1,
              bodyText2: AppStyle.bodyText2,
              button: AppStyle.button,
              caption: AppStyle.caption,
              overline: AppStyle.overline,
            ),
            appBarTheme: AppBarTheme(
              color: AppColor.lightColorScheme.primary,
              shadowColor: AppColor.seed,
              elevation: 10.0,
            ),
          ),
      initialRoute: BlogClubUi.onBoardingScreen,
      onGenerateRoute: AppRouter.route,
    );
  }
}
