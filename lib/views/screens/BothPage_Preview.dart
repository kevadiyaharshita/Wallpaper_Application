import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/Carousel_Controller.dart';

import '../../controller/Wallpaper_controller.dart';
import '../../modals/Wallpaper_Modal.dart';

class BothScreenPreview extends StatelessWidget {
  const BothScreenPreview({super.key});

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
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Gap(80),
              Consumer<Carousel_Controller>(builder: (context, p, _) {
                return CarouselSlider(
                  items: [
                    Container(
                      height: 370,
                      width: w,
                      child: Column(
                        children: [
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
                                        image: AssetImage(
                                            'assets/images/app-store.png'),
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
                                        image: AssetImage(
                                            'assets/images/apple-tv.png'),
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
                                        image: AssetImage(
                                            'assets/images/books.png'),
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
                                        image: AssetImage(
                                            'assets/images/camera.png'),
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
                                        image: AssetImage(
                                            'assets/images/clock.png'),
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
                                        image: AssetImage(
                                            'assets/images/contacts.png'),
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
                                        image: AssetImage(
                                            'assets/images/ios-message.png'),
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
                                        image: AssetImage(
                                            'assets/images/mail (1).png'),
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
                                        image: AssetImage(
                                            'assets/images/measure.png'),
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
                                        image: AssetImage(
                                            'assets/images/my-shortcuts.png'),
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
                                        image: AssetImage(
                                            'assets/images/settings.png'),
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
                        ],
                      ),
                    ),
                    Container(
                      height: 370,
                      width: w,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.lock_fill,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            "09:46",
                            style: TextStyle(fontSize: 80, color: Colors.white),
                          ),
                          Text(
                            "Tuesday,13 October",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                  carouselController: p.getController,
                  options: CarouselOptions(
                    height: 370,
                    animateToClosest: true,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      p.setCurrentIndex(index);
                    },
                  ),
                );
              }),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(
              //         height: 370,
              //         width: w,
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/app-store.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "App Store",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/apple-tv.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Apple Tv",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/books.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Books",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/camera.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Camera",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 )
              //               ],
              //             ),
              //             Gap(20),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/clock.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Clock",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/contacts.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Contacts",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/ios-message.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Message",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/mail (1).png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Mail",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 )
              //               ],
              //             ),
              //             Gap(20),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //               children: [
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/measure.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Measure",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/my-shortcuts.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Shortcuts",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(20),
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               'assets/images/settings.png'),
              //                           fit: BoxFit.cover,
              //                         ),
              //                       ),
              //                     ),
              //                     Text(
              //                       "Settings",
              //                       // style: TextStyle(
              //                       //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     )
              //                   ],
              //                 ),
              //                 Column(
              //                   children: [
              //                     Container(
              //                       height: 65,
              //                       width: 65,
              //                       // decoration: BoxDecoration(
              //                       //   borderRadius: BorderRadius.circular(20),
              //                       //   image: DecorationImage(
              //                       //     image: AssetImage('assets/images/mail (1).png'),
              //                       //     fit: BoxFit.cover,
              //                       //   ),
              //                       // ),
              //                     ),
              //                     // Text(
              //                     //   "Mail",
              //                     //   // style: TextStyle(
              //                     //   //     fontSize: 12, fontWeight: FontWeight.bold),
              //                     // )
              //                   ],
              //                 )
              //               ],
              //             ),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              Consumer<Carousel_Controller>(builder: (context, pro, _) {
                return GlassContainer(
                  height: 30,
                  width: 80,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: (0 == pro.getCurrentIndex)
                            ? Colors.white
                            : Colors.grey,
                      ),
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: (1 == pro.getCurrentIndex)
                            ? Colors.white
                            : Colors.grey,
                      ),
                    ],
                  ),
                );
              }),
              Spacer(
                flex: 2,
              ),
              Container(
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
                              platform: AsyncWallpaper.BOTH_SCREENS);
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
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
