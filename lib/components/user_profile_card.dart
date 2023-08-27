import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/components/profile.dart';
import 'package:get/get.dart';

class UserProfileCard extends StatelessWidget {
  String profile;
  String name;
  String description;

  UserProfileCard(
      {required this.profile, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: Get.width,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.only(top: 15, bottom: 5, left: 16, right: 16),
        child: Padding(
          padding: EdgeInsets.only(top: 15, bottom: 10, left: 16, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ProfilePicture(profile: profile),
            SizedBox(
              height: 16,
            ),
            ProfileName(name: name),
            SizedBox(
              height: 8,
            ),
            ProfileDescription(description: description),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileButton(title: 'Visit Link'),
                ProfileButton(title: 'Visit Profile')
              ],
            )
          ]),
        ),
      ),
    );
  }
}
