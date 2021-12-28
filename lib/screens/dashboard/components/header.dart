import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_card.dart';
import 'search_field.dart';

class Header extends StatelessWidget {
  final String headerName;
  final String userName;

  const Header({
    @required this.headerName,
    @required this.userName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuController>().controlMenu,
            icon: Icon(
              Icons.menu,
              color: branco,
            ),
          ),
        if (!Responsive.isMobile(context))
          Text(
            headerName,
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(
          child: SearchField(),
        ),
        ProfileCard(
          nomeExibicao: userName,
        ),
      ],
    );
  }
}
