import '/components_library/select_dialog/select_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'select_widget.dart' show SelectWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectModel extends FlutterFlowModel<SelectWidget> {
  ///  Local state fields for this component.

  List<String> selectedOptions = [];
  void addToSelectedOptions(String item) => selectedOptions.add(item);
  void removeFromSelectedOptions(String item) => selectedOptions.remove(item);
  void removeAtIndexFromSelectedOptions(int index) =>
      selectedOptions.removeAt(index);
  void insertAtIndexInSelectedOptions(int index, String item) =>
      selectedOptions.insert(index, item);
  void updateSelectedOptionsAtIndex(int index, Function(String) updateFn) =>
      selectedOptions[index] = updateFn(selectedOptions[index]);

  bool isDropdownOpen = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
