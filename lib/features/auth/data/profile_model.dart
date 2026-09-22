import 'package:flutter/material.dart';

class ProfileModel {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileModel({required this.icon, required this.title, required this.onTap});
}
