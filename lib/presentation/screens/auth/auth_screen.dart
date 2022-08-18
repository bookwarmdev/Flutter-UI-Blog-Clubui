import 'package:blogclubui/core/core.dart';
import 'package:blogclubui/presentation/routers/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int pageIndex = 1;

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
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 30.0,
                ),
                child: Image.asset(
                  "assets/images/LOGO_SMALL.png",
                  width: MediaQuery.of(context).size.width / 3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.lightColorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageIndex = 1;
                              });
                            },
                            child: Text(
                              "LOGIN",
                              style: AppStyle.headline5.copyWith(
                                color: pageIndex == 1
                                    ? AppColor.lightColorScheme.onPrimary
                                    : AppColor.lightColorScheme.onPrimary
                                        .withOpacity(0.2),
                                fontFamily: AppStyle.avenirHeavy,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                pageIndex = 2;
                              });
                            },
                            child: Text(
                              "SIGN UP",
                              style: AppStyle.headline5.copyWith(
                                color: pageIndex == 2
                                    ? AppColor.lightColorScheme.onPrimary
                                    : AppColor.lightColorScheme.onPrimary
                                        .withOpacity(0.2),
                                fontFamily: AppStyle.avenirHeavy,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.lightColorScheme.onPrimary,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          margin: const EdgeInsets.only(
                            top: 30.0,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (pageIndex == 1) ...{
                                Text(
                                  "Welcome back",
                                  style: AppStyle.headline4.copyWith(
                                    fontFamily: AppStyle.avenirHeavy,
                                    color: AppColor.lightColorScheme.shadow,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Sign in with your account",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "Username",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                TextFormField(),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "Password",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                TextFormField(),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        BlogClubUi.homeScreen,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          AppColor.lightColorScheme.secondary,
                                      onPrimary:
                                          AppColor.lightColorScheme.onPrimary,
                                      fixedSize: const Size(300, 60),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Text(
                                      "LOGIN",
                                      style: AppStyle.headline6.copyWith(
                                        color:
                                            AppColor.lightColorScheme.onPrimary,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Center(
                                  child: RichText(
                                    text: TextSpan(
                                      text: "Forgot your password? ",
                                      style: AppStyle.headline6.copyWith(
                                        fontFamily: AppStyle.avenirBook,
                                        fontWeight: FontWeight.w200,
                                        color:
                                            AppColor.lightColorScheme.primary,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Reset here",
                                          style: AppStyle.headline6.copyWith(
                                            fontFamily: AppStyle.avenirBook,
                                            color: AppColor
                                                .lightColorScheme.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Center(
                                  child: Text(
                                    "Or sign in with".toUpperCase(),
                                    style: AppStyle.headline6.copyWith(
                                      fontFamily: AppStyle.avenirBook,
                                      fontWeight: FontWeight.w200,
                                      color: AppColor.lightColorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset("assets/svgs/Google.svg"),
                                    SvgPicture.asset(
                                        "assets/svgs/Facebook.svg"),
                                    SvgPicture.asset("assets/svgs/Twitter.svg"),
                                  ],
                                ),
                              } else if (pageIndex == 2) ...{
                                Text(
                                  "Welcome back",
                                  style: AppStyle.headline4.copyWith(
                                    fontFamily: AppStyle.avenirHeavy,
                                    color: AppColor.lightColorScheme.shadow,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Sign up with your account",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "Username",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                TextFormField(),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  "Password",
                                  style: AppStyle.subtitle1.copyWith(
                                    fontFamily: AppStyle.avenirBook,
                                    color: AppColor.lightColorScheme.shadow,
                                    wordSpacing: 1.0,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                                TextFormField(),
                                const SizedBox(
                                  height: 30.0,
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        pageIndex = 1;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary:
                                          AppColor.lightColorScheme.secondary,
                                      onPrimary:
                                          AppColor.lightColorScheme.onPrimary,
                                      fixedSize: const Size(300, 60),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    child: Text(
                                      "SIGNUP",
                                      style: AppStyle.headline6.copyWith(
                                        color:
                                            AppColor.lightColorScheme.onPrimary,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Center(
                                  child: Text(
                                    "Or sign up with".toUpperCase(),
                                    style: AppStyle.headline6.copyWith(
                                      fontFamily: AppStyle.avenirBook,
                                      fontWeight: FontWeight.w200,
                                      color: AppColor.lightColorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset("assets/svgs/Google.svg"),
                                    SvgPicture.asset(
                                        "assets/svgs/Facebook.svg"),
                                    SvgPicture.asset("assets/svgs/Twitter.svg"),
                                  ],
                                )
                              }
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
