import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/ButtonController.dart';
import 'package:wallpaper_app/controller/PostModalController.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';
import 'package:wallpaper_app/utils/MyRoutes.dart';
import 'package:wallpaper_app/views/screens/BothPage_Preview.dart';
import 'package:wallpaper_app/views/screens/Categories_Detail_Page.dart';
import 'package:wallpaper_app/views/screens/Categories_Page.dart';
import 'package:wallpaper_app/views/screens/Detail_Page.dart';
import 'package:wallpaper_app/views/screens/Home_Page.dart';
import 'package:wallpaper_app/views/screens/Home_Page_Preview.dart';
import 'package:wallpaper_app/views/screens/LockPage_Preview.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => PostModalController(),
      ),
      ChangeNotifierProvider(
        create: (context) => WallpaperController(),
      ),
      ChangeNotifierProvider(
        create: (context) => ButtonController(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),

      initialRoute: MyRoutes.home,
      routes: {
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.detailPage: (context) => DetailPage(),
        MyRoutes.categoriesPage: (context) => CategoriesPage(),
        MyRoutes.categoriesDetailPage: (context) => CategoriesDetailPage(),
        MyRoutes.homePahePreview: (context) => HomePagePreview(),
        MyRoutes.LockPagePreview: (context) => LockScreenPreview(),
        MyRoutes.BothScreenPreview: (context) => BothScreenPreview(),
      },
      // home: HomePage(),
    );
  }
}
