import '/backend/schema/enums/enums.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'checkbox_group_widget.dart' show CheckboxGroupWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckboxGroupModel extends FlutterFlowModel<CheckboxGroupWidget> {
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

  ///  State fields for stateful widgets in this component.

  // Models for Checkbox dynamic component.
  late FlutterFlowDynamicModels<CheckboxModel> checkboxModels1;
  // Models for Checkbox dynamic component.
  late FlutterFlowDynamicModels<CheckboxModel> checkboxModels2;

  @override
  void initState(BuildContext context) {
    checkboxModels1 = FlutterFlowDynamicModels(() => CheckboxModel());
    checkboxModels2 = FlutterFlowDynamicModels(() => CheckboxModel());
  }

  @override
  void dispose() {
    checkboxModels1.dispose();
    checkboxModels2.dispose();
  }
}
