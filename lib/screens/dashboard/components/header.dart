import 'package:flutter/material.dart';

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
        Text(
          headerName,
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(
          flex: 2,
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
