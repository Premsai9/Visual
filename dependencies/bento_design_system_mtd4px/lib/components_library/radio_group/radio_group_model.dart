import '/backend/schema/enums/enums.dart';
import '/components_library/radio/radio_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'radio_group_widget.dart' show RadioGroupWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RadioGroupModel extends FlutterFlowModel<RadioGroupWidget> {
  ///  Local state fields for this component.

  String? selectedOptions;

  ///  State fields for stateful widgets in this component.

  // Models for Radio dynamic component.
  late FlutterFlowDynamicModels<RadioModel> radioModels1;
  // Models for Radio dynamic component.
  late FlutterFlowDynamicModels<RadioModel> radioModels2;

  @override
  void initState(BuildContext context) {
    radioModels1 = FlutterFlowDynamicModels(() => RadioModel());
    radioModels2 = FlutterFlowDynamicModels(() => RadioModel());
  }

  @override
  void dispose() {
    radioModels1.dispose();
    radioModels2.dispose();
  }
}
