import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/components/user_profile_card.dart';
import 'package:flutter_local_notifications/data/items.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Items item = Items();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Composition'),
        ),
        body: Container(
          width: Get.width,
          height: Get.height,
          color: const Color.fromARGB(255, 227, 227, 227),
          child: ListView.builder(
              itemCount: item.data.length,
              itemBuilder: (BuildContext context, index) {
                return UserProfileCard(
                  profile: '${item.data[index]['profile']}',
                  name: '${item.data[index]['name']}',
                  description: '${item.data[index]['description']}',
                );
              }),
        ),
      ),
    );
  }
}
