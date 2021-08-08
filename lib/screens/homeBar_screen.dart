import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_ui_only/globals/myColors.dart';
import 'package:insta_ui_only/functions/upload_image.dart' as imageUpload;
import 'package:insta_ui_only/globals/sizeConfig.dart';
import 'package:insta_ui_only/providers/posts.dart';
import 'package:insta_ui_only/screens/postList_screen.dart';
import 'package:insta_ui_only/widgets/bottomNavBar_main.dart';
import 'package:provider/provider.dart';
import 'dm_screen.dart';

class InstaHome extends StatefulWidget {
  static const route = '/homeBar_screen';

  @override
  _InstaHomeState createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  @override
  void initState() {
    Provider.of<Posts>(context, listen: false).fetchAndSetPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    imageUpload.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => imageUpload.navigate(),
            icon: Icon(
              Icons.camera_alt,
              color:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? kBlack
                      : kWhite,
            ),
          ),
          title: SizedBox(
            height: 35.0,
            child: MediaQuery.of(context).platformBrightness == Brightness.light
                ? Image.asset("assets/images/insta_logo_light.jpg")
                : Image.asset("assets/images/insta_logo_dark.jpg"),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon:
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? Image.asset('assets/icons/igtv_icon_light.jpg')
                      : Image.asset('assets/icons/igtv_icon_dark.jpg'),
              iconSize: 5,
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: IconButton(
                icon: Icon(FontAwesomeIcons.paperPlane),
                iconSize: 25,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(DMPage.route);
                },
              ),
            ),
          ],
        ),
        body: InstaList(),
        bottomNavigationBar: BottomNavBarMain(),
      ),
    );
  }
}
