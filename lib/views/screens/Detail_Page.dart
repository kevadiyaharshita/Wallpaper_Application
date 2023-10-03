import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app/controller/ButtonController.dart';
import 'package:wallpaper_app/modals/Wallpaper_Modal.dart';
import 'package:wallpaper_app/utils/MyRoutes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Wallpaper wallpaer =
        ModalRoute.of(context)!.settings.arguments as Wallpaper;
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(wallpaer.largeImageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Visibility(
                visible: Provider.of<ButtonController>(context).getIsOpened,
                child: Ink(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black54,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(80),
                    splashColor: Colors.grey,
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.homePahePreview,
                          arguments: wallpaer);
                    },
                    child: GlassContainer(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Icon(
                        (Icons.home_outlined),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: Provider.of<ButtonController>(context).getIsOpened,
                child: Ink(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.black54,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(80),
                    splashColor: Colors.grey,
                    onTap: () {
                      Navigator.of(context).pushNamed(MyRoutes.LockPagePreview,
                          arguments: wallpaer);
                    },
                    child: GlassContainer(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Icon(
                        (Icons.lock_outline),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Consumer<ButtonController>(builder: (context, p, _) {
                    return Ink(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.black54,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        splashColor: Colors.black,
                        onTap: () {
                          p.setIsOpened();
                        },
                        child: GlassContainer(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child:
                              Icon((p.getIsOpened) ? Icons.close : Icons.menu),
                        ),
                      ),
                    );
                  }),
                  Visibility(
                    visible: Provider.of<ButtonController>(context).getIsOpened,
                    child: Ink(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.black54,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        splashColor: Colors.grey,
                        onTap: () {},
                        child: GlassContainer(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: Icon(
                            (Icons.favorite_border),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: Provider.of<ButtonController>(context).getIsOpened,
                    child: Ink(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.black54,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        splashColor: Colors.grey,
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              MyRoutes.BothScreenPreview,
                              arguments: wallpaer);
                        },
                        child: GlassContainer(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: Icon(
                            (Icons.system_security_update_good),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
