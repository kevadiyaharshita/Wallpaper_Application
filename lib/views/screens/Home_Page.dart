import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Favourite_Controller.dart';
import 'package:wallpaper_app/controller/PostModalController.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';
import 'package:wallpaper_app/helpers/api_helper.dart';
import 'package:wallpaper_app/utils/MyRoutes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpapers"),
        // centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.FavouritePage);
            },
            icon: Icon(Icons.favorite_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(MyRoutes.categoriesPage);
            },
            icon: Icon(Icons.category),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(18, 10, 18, 0),
        child: Consumer<WallpaperController>(builder: (context, pro, _) {
          return Column(
            children: [
              Container(
                height: 50,
                child: TextField(
                  onSubmitted: (val) {
                    pro.getAllWallpapers(query: val.toString());
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    hintText: "Search your wallpaper here.",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide:
                            BorderSide(color: Colors.grey.withOpacity(0.5))),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                ),
              ),
              Gap(15),
              Expanded(
                child: (pro.allWallpaper.length != 0)
                    ? GridView.builder(
                        itemCount: pro.allWallpaper.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 7,
                          crossAxisSpacing: 7,
                          childAspectRatio: 2 / 3,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  MyRoutes.detailPage,
                                  arguments: pro.allWallpaper[index]);
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.2),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    pro.allWallpaper[index].largeImageURL,
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
                                            wallpaper: pro.allWallpaper[index]);
                                      },
                                      icon: Icon(
                                        ((p.checkFavourite(
                                                wallpaper:
                                                    pro.allWallpaper[index]))
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
                      )
                    : Center(
                        child: Text(
                          "No Data Found!!",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
              )
              // Consumer<PostModalController>(
              //   builder: (context, pro, _) {
              //     pro.getSingleData(id: 4);
              //     if (pro.pm != null) {
              //       return Container(
              //         width: 500,
              //         height: 500,
              //         child: Text(pro.pm!.title),
              //       );
              //     } else {
              //       return CircularProgressIndicator();
              //     }
              //   },
              // ),
            ],
          );
        }),
      ),
    );
  }
}
