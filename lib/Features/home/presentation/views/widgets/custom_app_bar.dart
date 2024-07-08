import 'package:booklly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 40, right: 24 , bottom: 20),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 17,
            width: 75,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 21,
            ),
          )
          // Image.asset(
          //   AssetsData.search,
          //   height: 21,
          // ),
          
        ],
      ),
    );
  }
}