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
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(24),
            right: getProportionateScreenWidth(24)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      onTap: (){
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
                      onTap: (){
                        checkMode = !checkMode;
                        themeProvider.changeTheme(checkMode);
                      },
                      child: Container(
                        height: getProportionateScreenHeight(32),
                        width: getProportionateScreenWidth(32),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                         color: Color(0x3398A2B3)
                        ),
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: themeProvider.isDarkMode ? Color(0x3398A2B3) : Palette.kGray100,
                    hintText: 'Search Country',
                    hintStyle: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: Palette.kGray200,
                      fontFamily: FontFamily.kAxiLight,
                      fontWeight: FontWeight.w300
                    ),
                    prefixIcon: Icon(
                      Icons.search
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
