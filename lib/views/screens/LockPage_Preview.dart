import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';

import '../../controller/Wallpaper_controller.dart';

class LockScreenPreview extends StatelessWidget {
  const LockScreenPreview({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    Wallpaper wallpaper =
        ModalRoute.of(context)!.settings.arguments as Wallpaper;
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(wallpaper.largeImageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Stack(
            children: [
              Column(
                children: [
                  Gap(50),
                  Container(
                    height: h - 90,
                    width: w,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/images/lockscreen1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 100,
                child: Container(
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Consumer<WallpaperController>(builder: (context, p, _) {
                        return GlassButton(
                          onPressed: () {
                            p.setWallPaper(
                                link: wallpaper.largeImageURL,
                                platform: AsyncWallpaper.LOCK_SCREEN);
                          },
                          child: Text("SET"),
                        );
                      }),
                      GlassButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("BACK"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
