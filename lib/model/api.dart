// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ApiModel {
  final String api;
  final String description;
  final String auth;
  final bool https;
  final String cors;
  final String link;
  final String category;
  final Map<String, dynamic> reviews;
  final String accuracy;
  final String outputSize;
  final String duration;
  final int stars;
  ApiModel({
    required this.api,
    required this.description,
    required this.auth,
    required this.https,
    required this.cors,
    required this.link,
    required this.category,
    required this.reviews,
    required this.accuracy,
    required this.outputSize,
    required this.duration,
    required this.stars,
  });

  ApiModel copyWith({
    String? api,
    String? description,
    String? auth,
    bool? https,
    String? cors,
    String? link,
    String? category,
    Map<String, dynamic>? reviews,
    String? accuracy,
    String? outputSize,
    String? duration,
    int? stars,
  }) {
    return ApiModel(
      api: api ?? this.api,
      description: description ?? this.description,
      auth: auth ?? this.auth,
      https: https ?? this.https,
      cors: cors ?? this.cors,
      link: link ?? this.link,
      category: category ?? this.category,
      reviews: reviews ?? this.reviews,
      accuracy: accuracy ?? this.accuracy,
      outputSize: outputSize ?? this.outputSize,
      duration: duration ?? this.duration,
      stars: stars ?? this.stars,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'API': api,
      'Description': description,
      'Auth': auth,
      'HTTPS': https,
      'Cors': cors,
      'Link': link,
      'Category': category,
      'Reviews': reviews,
      'Accuracy': accuracy,
      'OutputSize': outputSize,
      'Duration': duration,
      'Stars': stars,
    };
  }

  factory ApiModel.fromMap(Map<String, dynamic> map) {
    return ApiModel(
      api: map['API'] as String,
      description: map['Description'] as String,
      auth: map['Auth'] as String,
      https: map['HTTPS'] as bool,
      cors: map['Cors'] as String,
      link: map['Link'] as String,
      category: map['Category'] as String,
      reviews:
          Map<String, dynamic>.from((map['Reviews'] as Map<String, dynamic>)),
      accuracy: map['Accuracy'] as String,
      outputSize: map['OutputSize'] as String,
      duration: map['Duration'] as String,
      stars: map['Stars'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ApiModel.fromJson(String source) =>
      ApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ApiModel(api: $api, description: $description, auth: $auth, https: $https, cors: $cors, link: $link, category: $category, reviews: $reviews, accuracy: $accuracy, outputSize: $outputSize, duration: $duration, stars: $stars)';
  }

  @override
  bool operator ==(covariant ApiModel other) {
    if (identical(this, other)) return true;

    return other.api == api &&
        other.description == description &&
        other.auth == auth &&
        other.https == https &&
        other.cors == cors &&
        other.link == link &&
        other.category == category &&
        mapEquals(other.reviews, reviews) &&
        other.accuracy == accuracy &&
        other.outputSize == outputSize &&
        other.duration == duration &&
        other.stars == stars;
  }

  @override
  int get hashCode {
    return api.hashCode ^
        description.hashCode ^
        auth.hashCode ^
        https.hashCode ^
        cors.hashCode ^
        link.hashCode ^
        category.hashCode ^
        reviews.hashCode ^
        accuracy.hashCode ^
        outputSize.hashCode ^
        duration.hashCode ^
        stars.hashCode;
  }
}
