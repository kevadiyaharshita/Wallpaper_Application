import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';

import '../../controller/Favourite_Controller.dart';
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
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        pro.allCategoryWallpaper[index].largeImageURL,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Consumer<Favourite_Controller>(
                      builder: (context, p, _) {
                        return IconButton(
                          onPressed: () {
                            p.addWallpaper(
                                wallpaper: pro.allCategoryWallpaper[index]);
                          },
                          icon: Icon(
                            ((p.checkFavourite(
                              wallpaper: pro.allCategoryWallpaper[index],
                            ))
                                ? Icons.favorite_rounded
                                : Icons.favorite_border),
                            color: Colors.white,
                            size: 28,
                          ),
                        );
                      },
                    ),
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
