import 'package:flutter/material.dart';
import 'package:admin/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  final String title, svgSrc;
  final VoidCallback press;

  const DrawerListTile({
    @required this.title,
    @required this.svgSrc,
    @required this.press,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: branco,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: branco,
        ),
      ),
    );
  }
}
