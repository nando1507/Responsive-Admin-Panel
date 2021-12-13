import 'package:admin/screens/components/side_menu.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("teste"),
      // ),
      //drawer // exibe o menu latral
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              //Default flex = 1
              //and it takes 1/6 part of the screen
              child: SideMenu(),
            ),
            Expanded(
              // it takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            )
          ],
        ),
      ),
    );
  }
}
