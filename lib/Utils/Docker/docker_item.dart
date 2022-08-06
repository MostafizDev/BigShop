import 'package:flutter/material.dart';

class DockerItem {
  final String? title;
  final String? icon;
  final Widget? customWidget;

  DockerItem({
    this.icon,
    this.title,
    this.customWidget,
  }) : assert(icon != null || customWidget != null);
}
