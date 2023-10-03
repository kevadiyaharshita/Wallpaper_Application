import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';
import 'package:wallpaper_app/utils/MyRoutes.dart';

import '../../utils/Category_utils.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Categories"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(
          itemCount: Categories.categories.length,
          itemBuilder: (context, index) {
            return Consumer<WallpaperController>(builder: (context, pro, _) {
              return GestureDetector(
                onTap: () {
                  pro.getAllCategoryWallpapers(
                      query: Categories.categories[index]);
                  Navigator.of(context).pushNamed(MyRoutes.categoriesDetailPage,
                      arguments: Categories.categories[index]);
                },
                child: Container(
                  width: w,
                  height: 180,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(Categories.categoriesImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 0.2,
                            sigmaY: 0.2,
                          ),
                          child: Container(
                            width: w,
                            height: 180,
                            color: Colors.black54.withOpacity(0.5),
                            alignment: Alignment.center,
                            child: Text(
                              Categories.categories[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
          },
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
