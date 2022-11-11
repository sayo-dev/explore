import 'dart:math';

import 'package:explore/model/response/country.dart';
import 'package:explore/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../service/get_countries.dart';
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
  bool showContinent = false;
  bool showTimezone = false;
  final TextEditingController _controller = TextEditingController();
 List<CountryModel>? countries = [];
  Future<List<CountryModel>?> getCountries()async{
    var response =  await GetCountries.getCountries();
    for (var country in response!){
      countries?.add(country);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getCountries();
    super.initState();
  }

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
              right: getProportionateScreenWidth(24)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      print(countries![100].capital![0]);
                    },
                    child: kText(
                      text: 'Explore',
                      size: 24,
                      family: FontFamily.kPacifico,
                      fontWeight: FontWeight.w600,
                      // color: query == Brightness.light ? Palette.kLogoColor : Colors.white,
                    ),
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
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Deutsch'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'English'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Español'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Française'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Italiano'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Português'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Pу́сский'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Svenska'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'Türkçe'
                                    ),
                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: '普通话'
                                    ),

                                    kLanguageTile(
                                        themeProvider,
                                        onTap: () {  },
                                        language: 'بالعربية'
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
                        builder: (context) => StatefulBuilder(
                          builder: (context, setState) {
                            return SingleChildScrollView(
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
                                            showContinent = false;
                                            showTimezone = false;
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
                                kFilterTile(
                                    themeProvider,
                                  onTap: (){
                                      setState(() {
                                        showContinent = !showContinent;
                                      });
                                  },
                                  decp: 'Continent',
                                  iconData: showContinent ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down
                                ),
                                    Visibility(
                                      visible: showContinent,
                                      child: Column(
                                          children: [
                                            kFilterSubTile(
                                                themeProvider,
                                              onTap: (){
                                                  countries?.retainWhere((element) => element.continents!.contains('Africa'));
                                              },
                                              text: 'Africa'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'Antarctica'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'Asia'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'Australia'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'Europe'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'North America'
                                            ),
                                            kFilterSubTile(
                                                themeProvider,
                                                onTap: (){},
                                                text: 'South America'
                                            ),
                                          ],
                                        ),
                                      replacement: SizedBox.shrink(),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(24),
                                    ),
                                    kFilterTile(
                                        themeProvider,
                                        onTap: (){
                                          setState(() {
                                            showTimezone = !showTimezone;
                                          });
                                        },
                                        decp: 'Time Zone',
                                        iconData: showTimezone ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down
                                    ),
                                    Visibility(
                                      visible: showTimezone,
                                      child: Column(
                                        children: [
                                          kFilterSubTile(
                                              themeProvider,
                                              onTap: (){},
                                              text: 'GMT+1:00'
                                          ),
                                          kFilterSubTile(
                                              themeProvider,
                                              onTap: (){},
                                              text: 'GMT+2:00'
                                          ),
                                          kFilterSubTile(
                                              themeProvider,
                                              onTap: (){},
                                              text: 'GMT+3:00'
                                          ),
                                          kFilterSubTile(
                                              themeProvider,
                                              onTap: (){},
                                              text: 'GMT+4:00'
                                          ),
                                          kFilterSubTile(
                                              themeProvider,
                                              onTap: (){},
                                              text: 'GMT+5:00'
                                          ),
                                        ],
                                      ),
                                      replacement: SizedBox.shrink(),
                                    ),
                                    SizedBox(
                                      height: getProportionateScreenHeight(24),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: getProportionateScreenWidth(104),
                                          height: getProportionateScreenHeight(48),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            border: Border.all(
                                              color: themeProvider.isDarkMode ? Palette.kGray100 : Palette.kGrayWarm
                                            )
                                          ),
                                          child: kText(
                                              text: 'Reset',
                                              size: 16,
                                              color: themeProvider.isDarkMode ? Palette.kGray100 : Palette.kGrayWarm,
                                              fontWeight: FontWeight.w400,
                                              family: FontFamily.kAxiRegular
                                          )
                                        ),
                                        SizedBox(
                                          width: getProportionateScreenWidth(40),
                                        ),
                                        Expanded(
                                          child: Container(
                                              width: getProportionateScreenWidth(236),
                                              height: getProportionateScreenHeight(48),
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(4),
                                                 color: Color(0xffFF6C00)
                                              ),
                                              child: kText(
                                                  text: 'Show results',
                                                  size: 16,
                                                  color: themeProvider.isDarkMode ? Palette.kGray100 : Palette.kGray25,
                                                  fontWeight: FontWeight.w400,
                                                  family: FontFamily.kAxiRegular
                                              )
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
                            );
                          }
                        ));
                      },
                      iconData: Icons.filter_alt_outlined,
                      decp: 'Filter')
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              kText(
                text: 'A',
                size: 14,
                family: FontFamily.kAxiRegular,
                color: themeProvider.isDarkMode
                    ? Palette.kGray400
                    : Palette.kGray500,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: countries?.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index)  {
                    return ListTile(
                      leading: Container(
                        height: getProportionateScreenHeight(40),
                        width: getProportionateScreenWidth(40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: NetworkImage(countries![index].flags!.png!)
                            )
                        ),
                      ),
                      title: kText(
                        text: countries![index].name!.common!,
                        size: 14,
                        family: FontFamily.kAxiRegular,
                        color: themeProvider.isDarkMode
                            ? Palette.kGray100
                            : Palette.kGrayWarm,
                        fontWeight: FontWeight.w400,
                      ),
                      subtitle: kText(
                        text: countries![index].capital![0].startsWith(RegExp('a', caseSensitive: false)) ? 'hey' : 'na',
                        size: 14,
                        family: FontFamily.kAxiRegular,
                        color: themeProvider.isDarkMode
                            ? Palette.kGray400
                            : Palette.kGray500,
                        fontWeight: FontWeight.w400,
                      ),
                    );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding kFilterSubTile(ThemeProvider themeProvider, {required VoidCallback onTap, required String text}) {
    return Padding(
                                          padding:  EdgeInsets.only(
                                            top: getProportionateScreenHeight(16)
                                          ),
                                          child: InkWell(
                                            onTap: onTap,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                kText(
                                                  text: text,
                                                  size: 16,
                                                  family: FontFamily.kAxiRegular,
                                                  color: themeProvider.isDarkMode ? Palette.kGray300 : Palette.kGray500,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                                Icon(
                                                  Icons.crop_square_rounded,
                                                  color: Palette.kGray500,
                                                )
                                              ],
                                            ),
                                          ),
                                        );
  }

  InkWell kFilterTile(ThemeProvider themeProvider, {required VoidCallback onTap, required String decp, required IconData iconData }) {
    return InkWell(
                              onTap: onTap,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  kText(
                                    text: decp,
                                    size: 16,
                                    family: FontFamily.kAxiRegular,
                                    color: themeProvider.isDarkMode ? Palette.kGray200 : Palette.kGrayWarm,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  Icon(
                                    iconData,
                                    color: Palette.kGray500,
                                  )
                                ],
                              ),
                            );
  }

  Padding kLanguageTile(ThemeProvider themeProvider, {required VoidCallback onTap, required String language}) {
    return Padding(
      padding:  EdgeInsets.only(
        bottom: getProportionateScreenHeight(24)
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            kText(
              text: language,
              size: 16,
              family: FontFamily.kAxiRegular,
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
      ),
    );
  }

  InkWell kFeature(ThemeProvider themeProvider, {required VoidCallback onTap, required IconData iconData, required String decp}) {
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
