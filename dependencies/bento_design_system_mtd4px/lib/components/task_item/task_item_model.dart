import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/components_library/chip/chip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'task_item_widget.dart' show TaskItemWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskItemModel extends FlutterFlowModel<TaskItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Checkbox component.
  late CheckboxModel checkboxModel;
  // Models for Chip dynamic component.
  late FlutterFlowDynamicModels<ChipModel> chipModels;

  @override
  void initState(BuildContext context) {
    checkboxModel = createModel(context, () => CheckboxModel());
    chipModels = FlutterFlowDynamicModels(() => ChipModel());
  }

  @override
  void dispose() {
    checkboxModel.dispose();
    chipModels.dispose();
  }
}
