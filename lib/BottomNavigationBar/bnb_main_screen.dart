import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/bnb_pages/bnb_favorite.dart';
import 'package:flutter_assignment/BottomNavigationBar/bnb_pages/bnb_home.dart';

class Util {
  static bool isDark = false;
}

class BNBMainPage extends StatefulWidget {
  Function function;

  PageController pageController = PageController();
  int index = 0;

  BNBMainPage(this.function);

  @override
  State<BNBMainPage> createState() => _BNBMainPageState();
}

class _BNBMainPageState extends State<BNBMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppName".tr()),
        actions: [
          Switch(
            value: Util.isDark,
            onChanged: (value) {
              Util.isDark = !Util.isDark;
              widget.function();
            },
          ),
          ElevatedButton(
            onPressed: () {
              Locale local = context.locale;
              bool isArabic = local == Locale("ar");
              if (isArabic) {
                context.setLocale(Locale("en"));
              } else {
                context.setLocale(Locale("en"));
              }
            },
            child: Text("ChangeLang".tr()),
          )
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: widget.pageController,
        children: [BNBHomePage(), BNBFavoritePage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
        ],
        currentIndex: widget.index,
        onTap: (value) {
          widget.index = value;
          setState(() {});
          widget.pageController.animateToPage(
            value,
            duration: Duration(seconds: 1),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}
