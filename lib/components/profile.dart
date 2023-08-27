import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  String profile;

  ProfilePicture({required this.profile});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(profile),
    );
  }
}

class ProfileName extends StatelessWidget {
  String name;

  ProfileName({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class ProfileDescription extends StatelessWidget {
  String description;

  ProfileDescription({required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 2,
      style: TextStyle(fontSize: 14),
    );
  }
}

class ProfileButton extends StatelessWidget {
  String title;

  ProfileButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
        onPressed: () {
          print('button pressed');
        },
        child: Text(title),
      ),
    );
  }
}
