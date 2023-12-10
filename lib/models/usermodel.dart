
import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String image;
  final String postImage;
  final String caption;
  final String timeAgo;
  final bool isLike;
  final bool isSaved;
  final bool isComment;
  final bool isSend;
  final String viewCount;
  final String commentCount;
  final String likeCount;
  final String postCount;
  final String followerCount;
  final String followingCount;
  final String bio;
  final String storyImage;
  final String storyName;
  final String storyTime;
  final String storyImage2;
  final String storyName2;
  final String storyTime2;
  final String storyImage3;
  final String storyName3;
  final String storyTime3;

  UserModel({
    required this.name,
    required this.image,
    required this.postImage,
    required this.caption,
    required this.timeAgo,
    required this.isLike,
    required this.isSaved,
    required this.isComment,
    required this.isSend,
    required this.viewCount,
    required this.commentCount,
    required this.likeCount,
    required this.postCount,
    required this.followerCount,
    required this.followingCount,
    required this.bio,
    required this.storyImage,
    required this.storyName,
    required this.storyTime,
    required this.storyImage2,
    required this.storyName2,
    required this.storyTime2,
    required this.storyImage3,
    required this.storyName3,
    required this.storyTime3,
  });
}