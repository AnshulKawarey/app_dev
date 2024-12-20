import 'package:flutter/material.dart';

final view = WidgetsBinding.instance.platformDispatcher.views.first;
final size = view.physicalSize;
final pixelRatio = view.devicePixelRatio;

// Size in physical pixels:
// final w = size.width / 100;
// final h = size.height / 100;

// // Size in logical pixels:
final w = size.width / (100 * pixelRatio);
final h = size.height / (100 * pixelRatio);
