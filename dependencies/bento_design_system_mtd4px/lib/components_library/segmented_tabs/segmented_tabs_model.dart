import '/backend/schema/enums/enums.dart';
import '/components_library/segmentet_tabs_item/segmentet_tabs_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'segmented_tabs_widget.dart' show SegmentedTabsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SegmentedTabsModel extends FlutterFlowModel<SegmentedTabsWidget> {
  ///  Local state fields for this component.

  int activeIndex = 0;

  ///  State fields for stateful widgets in this component.

  // Models for SegmentetTabs_Item dynamic component.
  late FlutterFlowDynamicModels<SegmentetTabsItemModel> segmentetTabsItemModels;

  @override
  void initState(BuildContext context) {
    segmentetTabsItemModels =
        FlutterFlowDynamicModels(() => SegmentetTabsItemModel());
  }

  @override
  void dispose() {
    segmentetTabsItemModels.dispose();
  }
}
