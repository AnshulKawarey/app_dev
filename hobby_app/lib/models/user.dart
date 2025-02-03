/*
User requirements
- uid
- name
- username
- email
- phone no
- bio
- hobbies
- address
*/

import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  final String uid;
  final String name;
  final String username;
  final String email;
  final String bio;

  UserProfile({
    required this.uid,
    required this.name,
    required this.username,
    required this.email,
    required this.bio,
  });

  //convert firestore to user profile
  factory UserProfile.fromDocument(DocumentSnapshot doc) {
    return UserProfile(
      uid: doc['uid'],
      name: doc['name'],
      username: doc['username'],
      email: doc['email'],
      bio: doc['bio'],
    );
  }

  //covert profile to map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'username': username,
      'email': email,
      'bio': bio,
    };
  }
}
