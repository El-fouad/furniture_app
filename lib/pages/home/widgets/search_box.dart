import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

// ignore: camel_case_types
class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(14))),
      child: const TextField(
        style: TextStyle(
          color: Colors.white
        ),
          decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 35,
        ),
        hintText: "Search...",
        hintStyle: TextStyle(color: Colors.white),
      )),
    );
  }
}
