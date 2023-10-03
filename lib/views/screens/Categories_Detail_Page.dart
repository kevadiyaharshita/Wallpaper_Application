import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';

import '../../utils/MyRoutes.dart';

class CategoriesDetailPage extends StatelessWidget {
  const CategoriesDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    String query = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpapers"),
        centerTitle: true,
      ),
      body: Consumer<WallpaperController>(builder: (context, pro, _) {
        return Padding(
          padding: EdgeInsets.all(18),
          child: GridView.builder(
            itemCount: pro.allCategoryWallpaper.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(MyRoutes.detailPage,
                      arguments: pro.allCategoryWallpaper[index]);
                },
                child: Container(
                  child: Image.network(
                    pro.allCategoryWallpaper[index].largeImageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
