import 'package:flutter/material.dart';

class Profile {
  final String topic;
  final Image image;

  Profile({
    required this.topic,
    required this.image,
  });
}

final List<Profile> profiles = [
  Profile(
    topic: "Myself",
    image: Image.asset('assets/images/icons/user.png'),
  ),
  Profile(
      topic: "My Relative",
      image: Image.asset('assets/images/icons/relative.png')),
  Profile(topic: "My Son", image: Image.asset('assets/images/icons/Headm.png')),
  Profile(
      topic: "My Daughter",
      image: Image.asset('assets/images/icons/headf.png')),
  Profile(
      topic: "My Brother", image: Image.asset('assets/images/icons/male.png')),
  Profile(
      topic: "My Sister", image: Image.asset('assets/images/icons/female.png')),
  Profile(
      topic: "Marriage Burrow",
      image: Image.asset('assets/images/icons/org.png')),
  Profile(
      topic: "My Friend", image: Image.asset('assets/images/icons/friend.png')),
];

class Gender {
  final String gender;
  final Image image;

  Gender({required this.gender, required this.image});
}

final List<Gender> genders = [
  Gender(
    gender: "Male",
    image: Image.asset('assets/images/icons/male.png'),
  ),
  Gender(
    gender: "Female",
    image: Image.asset('assets/images/icons/female.png'),
  ),
];
