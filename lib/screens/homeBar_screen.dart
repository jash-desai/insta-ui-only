import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_ui_only/myColors.dart';
import 'package:insta_ui_only/screens/search_screen.dart';
import 'account_screen.dart';
import 'activity_screen.dart';
import 'dm_screen.dart';
import 'insta_body.dart';
// import 'login_screen.dart';

class InstaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.white
                : Colors.black,
        actionsIconTheme: IconThemeData(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? kBlack
              : kWhite,
        ),
        centerTitle: true,
        elevation: 1.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt,
            color: MediaQuery.of(context).platformBrightness == Brightness.light
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
            icon: MediaQuery.of(context).platformBrightness == Brightness.light
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DMPage()),
                );
              },
            ),
          ),
        ],
      ),
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Colors.white
            : Colors.black,
        height: 50.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          color: MediaQuery.of(context).platformBrightness == Brightness.light
              ? Colors.white
              : Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.black
                    : Colors.white,
                icon: Icon(
                  Icons.home,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InstaHome()),
                  );
                },
              ),
              IconButton(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.black
                    : Colors.grey.shade700,
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box,
                ),
                onPressed: null,
              ),
              IconButton(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.black
                    : Colors.grey.shade700,
                icon: Icon(FontAwesomeIcons.heart),
                iconSize: 20,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityPage()),
                  );
                },
              ),
              IconButton(
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Colors.black
                    : Colors.grey.shade700,
                icon: Icon(
                  Icons.account_box,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
