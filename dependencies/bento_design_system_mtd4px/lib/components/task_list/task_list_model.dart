import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/task_item/task_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'task_list_widget.dart' show TaskListWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskListModel extends FlutterFlowModel<TaskListWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for Task_Item dynamic component.
  late FlutterFlowDynamicModels<TaskItemModel> taskItemModels;

  @override
  void initState(BuildContext context) {
    taskItemModels = FlutterFlowDynamicModels(() => TaskItemModel());
  }

  @override
  void dispose() {
    taskItemModels.dispose();
  }
}
