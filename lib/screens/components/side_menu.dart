import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset(logo_png),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: menu_dashbord,
              press: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              svgSrc: menu_tran,
              press: () {},
            ),
            DrawerListTile(
              title: "Task",
              svgSrc: menu_task,
              press: () {},
            ),
            DrawerListTile(
              title: "Documents",
              svgSrc: menu_doc,
              press: () {},
            ),
            DrawerListTile(
              title: "Store",
              svgSrc: menu_store,
              press: () {},
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: menu_task,
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: menu_profile,
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: menu_setting,
              press: () {},
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
