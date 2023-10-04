import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Favourite_Controller.dart';

import '../../utils/MyRoutes.dart';

class AllFavouriteWallPaper extends StatelessWidget {
  const AllFavouriteWallPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourite"),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Consumer<Favourite_Controller>(builder: (context, pro, _) {
            return (pro.favouritesWallpapers.length != 0)
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 7,
                      childAspectRatio: 2 / 3,
                    ),
                    itemCount: pro.favouritesWallpapers.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(MyRoutes.detailPage,
                              arguments: pro.favouritesWallpapers[index]);
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
                                  pro.favouritesWallpapers[index].largeImageURL,
                                ),
                                fit: BoxFit.cover),
                          ),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              onPressed: () {
                                pro.addWallpaper(
                                    wallpaper: pro.favouritesWallpapers[index]);
                              },
                              icon: Icon(
                                ((pro.checkFavourite(
                                        wallpaper:
                                            pro.favouritesWallpapers[index]))
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_border),
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      "No Data Found!!",
                      style: TextStyle(fontSize: 22),
                    ),
                  );
          }),
        ));
  }
}
