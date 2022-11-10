import 'package:flutter/material.dart';

import '../widget/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: const[
          HomeAppBar()
        ],
      ),
    );
  }
}
