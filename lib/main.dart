import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/postsProvider.dart';
import 'package:flutter_assignment/provider_data.dart';
import 'package:provider/provider.dart';

import 'Assignment2_Meal/meal_page.dart';
import 'BottomNavigationBar/bnb_main_screen.dart';
import 'Lacture19_9/home.dart';
import 'TodoAppProvider/views/pages/main_page.dart';
import 'flutter_assignment_1.dart';
import 'Lacture17_9/postDitals.dart';
import 'Lacture17_9/post_screen2.dart';
import 'list_view.dart';
import 'PostAssignment/data.dart';
import 'PostAssignment/util.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<PostsProvider>(
          create: (context) {
            return PostsProvider();
          },
        ),
        ChangeNotifierProvider<ProviderData>(
          create: (context) {
            return ProviderData();
          },
        ),
      ],
      child: EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en'),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  UpdateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostsProvider>(
      create: (context) {
        return PostsProvider();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: Util.isDark ? ThemeData.dark() : ThemeData.light(),
        home: BNBMainPage(UpdateScreen),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
