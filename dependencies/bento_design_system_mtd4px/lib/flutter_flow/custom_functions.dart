import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

double convertToRange(
  double min,
  double max,
  double value,
  double newMin,
  double newMax,
) {
  return ((value - min) / (max - min)) * (newMax - newMin) + (newMin);
}

String? getFileName(FFUploadedFile file) {
  final fullName = file.name;
  final sanitizedName = fullName!.replaceAll(RegExp(r'_[0-9]'), "");

  return sanitizedName;
}

String? getFileSize(FFUploadedFile file) {
  int sizeInBytes = file.bytes!.length;
  double sizeInKB = sizeInBytes / 1024;
  return sizeInKB.toStringAsFixed(2);
}

List<FFUploadedFile> mergeFileList(
  List<FFUploadedFile> oldList,
  List<FFUploadedFile> newList,
) {
  oldList.addAll(newList);
  return oldList;
}
