import '/backend/schema/enums/enums.dart';
import '/components/task_list/task_list_widget.dart';
import '/components_library/segmented_tabs/segmented_tabs_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'tasks_page_widget.dart' show TasksPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TasksPageModel extends FlutterFlowModel<TasksPageWidget> {
  ///  Local state fields for this page.

  List<String> tabs = ['Assigned', 'Created', 'Completed'];
  void addToTabs(String item) => tabs.add(item);
  void removeFromTabs(String item) => tabs.remove(item);
  void removeAtIndexFromTabs(int index) => tabs.removeAt(index);
  void insertAtIndexInTabs(int index, String item) => tabs.insert(index, item);
  void updateTabsAtIndex(int index, Function(String) updateFn) =>
      tabs[index] = updateFn(tabs[index]);

  int activeTab = 0;

  ///  State fields for stateful widgets in this page.

  // Model for SegmentedTabs component.
  late SegmentedTabsModel segmentedTabsModel;

  @override
  void initState(BuildContext context) {
    segmentedTabsModel = createModel(context, () => SegmentedTabsModel());
  }

  @override
  void dispose() {
    segmentedTabsModel.dispose();
  }
}
