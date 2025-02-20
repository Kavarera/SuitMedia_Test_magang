import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromRGBO(255, 255, 255, 0.7),
                child: Icon(Icons.person_add_alt_1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
