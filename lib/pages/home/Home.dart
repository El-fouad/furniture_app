import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/pages/home/widgets/body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appNavBar(),
      body: Body(),
    );
  }

  AppBar appNavBar() {
    return AppBar(
      elevation: 0,
      title: const Text(
        'Dashboard',
        style: TextStyle(
          color: kBackgroundColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: kPrimaryColor,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: kBackgroundColor,
            ))
      ],
    );
  }
}
