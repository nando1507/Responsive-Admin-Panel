import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProfileCard extends StatelessWidget {
  final String nomeExibicao;

  const ProfileCard({
    @required this.nomeExibicao,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.black54,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            profile_pic,
            height: 38,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
            ),
            child: Text(nomeExibicao),
          ),
          Icon(
            Icons.keyboard_arrow_down,
          )
        ],
      ),
    );
  }
}
