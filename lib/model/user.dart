import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class UserModel {
  final String uid;
  final String name;
  final String email;
  final String profilePic;
  final Timestamp createdAt;
  final bool isAuthenticated;
  final List<String> bookmarks;
  final List<String> followers;
  final List<String> following;
  UserModel({
    required this.uid,
    required this.name,
    required this.email,
    required this.profilePic,
    required this.createdAt,
    required this.isAuthenticated,
    required this.bookmarks,
    required this.followers,
    required this.following,
  });

  UserModel copyWith({
    String? uid,
    String? name,
    String? email,
    String? profilePic,
    Timestamp? createdAt,
    bool? isAuthenticated,
    List<String>? bookmarks,
    List<String>? followers,
    List<String>? following,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      email: email ?? this.email,
      profilePic: profilePic ?? this.profilePic,
      createdAt: createdAt ?? this.createdAt,
      bookmarks: bookmarks ?? this.bookmarks,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      isAuthenticated: this.isAuthenticated,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'name': name,
      'email': email,
      'profilePic': profilePic,
      'createdAt': createdAt,
      'isAuthenticated': isAuthenticated,
      'bookmarks': bookmarks,
      'followers': followers,
      'following': following,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      profilePic: map['profilePic'] as String,
      createdAt: map['createdAt'] as Timestamp,
      isAuthenticated: map['isAuthenticated'] as bool,
      bookmarks: List<String>.from((map['bookmarks'])),
      followers: List<String>.from((map['followers'])),
      following: List<String>.from((map['following'])),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(uid: $uid, name: $name, email: $email, profilePic: $profilePic, createdAt: $createdAt, bookmarks: $bookmarks, followers: $followers, following: $following)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.name == name &&
        other.email == email &&
        other.profilePic == profilePic &&
        other.createdAt == createdAt &&
        listEquals(other.bookmarks, bookmarks) &&
        listEquals(other.followers, followers) &&
        listEquals(other.following, following);
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        email.hashCode ^
        profilePic.hashCode ^
        createdAt.hashCode ^
        bookmarks.hashCode ^
        followers.hashCode ^
        following.hashCode;
  }
}
