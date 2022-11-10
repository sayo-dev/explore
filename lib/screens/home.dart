import 'dart:math';

import 'package:explore/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/components/reusable.dart';
import '../utils/components/theme.dart';
import '../utils/constants/font.dart';
import '../utils/shared_data.dart';
import '../utils/size_config.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool checkMode = false;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    final themeProvider = context.watch<ThemeProvider>();
    final query = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(20),
                left: getProportionateScreenWidth(24),
                right: getProportionateScreenWidth(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kText(
                      text: 'Explore',
                      size: 24,
                      family: FontFamily.kPacifico,
                      fontWeight: FontWeight.w600,
                      // color: query == Brightness.light ? Palette.kLogoColor : Colors.white,
                    ),
                    Visibility(
                      visible: ThemeValueStorage.retrieveThemeValue(),
                      replacement: InkWell(
                        onTap: () {
                          print(themeProvider.isDarkMode);
                          checkMode = !checkMode;
                          themeProvider.changeTheme(checkMode);
                        },
                        child: Icon(
                          Icons.wb_sunny_outlined,
                          color: Palette.kGrayWarm,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          checkMode = !checkMode;
                          themeProvider.changeTheme(checkMode);
                        },
                        child: Container(
                          height: getProportionateScreenHeight(32),
                          width: getProportionateScreenWidth(32),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0x3398A2B3)),
                          child: Transform.rotate(
                            angle: 24,
                            child: Icon(
                              Icons.nightlight_outlined,
                              // color: Palette.kGray200,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(48),
                  child: TextField(
                    cursorColor: Colors.blue,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: themeProvider.isDarkMode
                            ? Color(0x3398A2B3)
                            : Palette.kGray100,
                        hintText: 'Search Country',
                        hintStyle: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            fontFamily: FontFamily.kAxiLight,
                            fontWeight: FontWeight.w300),
                        prefixIcon: Icon(Icons.search, color: Palette.kGray25),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none,
                        )),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    kFeature(themeProvider, onTap: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: themeProvider.isDarkMode
                              ? Palette.kDarkColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32),
                                  topRight: Radius.circular(32))),
                          isDismissible: false,
                          isScrollControlled: true,
                          builder: (context) => SingleChildScrollView(
                            child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(24),
                                      right: getProportionateScreenWidth(24),
                                      top: getProportionateScreenHeight(24)),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          kText(
                                            text: 'Languages',
                                            size: 20,
                                            family: FontFamily.kAxiBold,
                                            color: themeProvider.isDarkMode
                                                ? Palette.kGray200
                                                : Palette.kGrayWarm,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.cancel,
                                              color: Palette.kGray400,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Bahasa'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Deutsch'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'English'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Español'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Française'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Italiano'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Português'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Pу́сский'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Svenska'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'Türkçe'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: '普通话'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'بالعربية'
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(24),
                                      ),
                                      kLanguageTile(
                                          themeProvider,
                                          onTap: () {  },
                                          language: 'বাঙ্গালী'
                                      ),
                                    ],
                                  ),
                                ),
                          ));
                    }, iconData: Icons.language_outlined, decp: 'EN'),
                    kFeature(themeProvider,
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: themeProvider.isDarkMode
                              ? Palette.kDarkColor
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                          isDismissible: false,
                          isScrollControlled: true,
                          builder: (context) => SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(24),
                                  right: getProportionateScreenWidth(24),
                                  top: getProportionateScreenHeight(24)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      kText(
                                        text: 'Filter',
                                        size: 20,
                                        family: FontFamily.kAxiBold,
                                        color: themeProvider.isDarkMode
                                            ? Palette.kGray200
                                            : Palette.kGrayWarm,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.cancel,
                                          color: Palette.kGray400,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(24),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                        iconData: Icons.filter_alt_outlined,
                        decp: 'Filter')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell kLanguageTile(ThemeProvider themeProvider, {required VoidCallback onTap, required String language}) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          kText(
            text: language,
            size: 16,
            family: FontFamily.kAxiBold,
            color:
                themeProvider.isDarkMode ? Palette.kGray200 : Palette.kGrayWarm,
            fontWeight: FontWeight.w400,
          ),
          Icon(
            Icons.circle_outlined,
            color: Palette.kGray500,
          )
        ],
      ),
    );
  }

  InkWell kFeature(ThemeProvider themeProvider,
      {required VoidCallback onTap,
      required IconData iconData,
      required String decp}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(73),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffA9B8D4)),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color:
                    themeProvider.isDarkMode ? Color(0xff000F24) : Colors.white,
                offset: Offset(0, 1),
                blurRadius: 4,
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: themeProvider.isDarkMode
                  ? Palette.kGray300
                  : Palette.kGrayWarm,
              size: getProportionateScreenWidth(20),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            kText(
              text: decp,
              size: 12,
              family: FontFamily.kAxiMedium,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
