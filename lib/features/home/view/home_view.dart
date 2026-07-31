
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Center(
      //     child: Hero(
            
      //       tag: "logo",
      //       child: Image.asset(AppImages.logoApp  ,height: 40,)),
      //   ),
      // ),
      body: Center(
        child: Text("Home View"),
      ),
    );
  }
}