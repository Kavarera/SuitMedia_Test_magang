import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/third_screen_controller.dart';

class ThirdScreenView extends GetView<ThirdScreenController> {
  const ThirdScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: const Text('Third Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                controller.setResult(index);
              },
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      controller.dummyData[index]['firstName']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      controller.dummyData[index]['lastName']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  controller.dummyData[index]['email']!,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                leading: ClipOval(
                  child: Image.asset(
                    "assets/images/dummy_profile.png",
                    fit: BoxFit.cover,
                    width: 50,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Divider(
                color: Colors.grey,
              ),
            );
          },
          itemCount: controller.dummyData.length,
        ),
      ),
    );
  }
}
