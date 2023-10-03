import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Wallpaper_controller.dart';
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';

class HomePagePreview extends StatelessWidget {
  const HomePagePreview({super.key});

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
          child: Column(
            children: [
              Gap(80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/app-store.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "App Store",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/apple-tv.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Apple Tv",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/books.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Books",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/camera.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Camera",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Clock",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/contacts.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Contacts",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/ios-message.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Message",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/mail (1).png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Mail",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/measure.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Measure",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/my-shortcuts.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Shortcuts",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage('assets/images/settings.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Settings",
                        // style: TextStyle(
                        //     fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        //   image: DecorationImage(
                        //     image: AssetImage('assets/images/mail (1).png'),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                      ),
                      // Text(
                      //   "Mail",
                      //   // style: TextStyle(
                      //   //     fontSize: 12, fontWeight: FontWeight.bold),
                      // )
                    ],
                  )
                ],
              ),
              Spacer(
                flex: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Consumer<WallpaperController>(builder: (context, p, _) {
                    return GlassButton(
                      onPressed: () {
                        p.setWallPaper(
                            link: wallpaper.largeImageURL,
                            platform: AsyncWallpaper.HOME_SCREEN);
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
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
