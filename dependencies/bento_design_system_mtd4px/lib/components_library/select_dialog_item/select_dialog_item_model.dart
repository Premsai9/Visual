import '/backend/schema/enums/enums.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'select_dialog_item_widget.dart' show SelectDialogItemWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectDialogItemModel extends FlutterFlowModel<SelectDialogItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Checkbox component.
  late CheckboxModel checkboxModel;

  @override
  void initState(BuildContext context) {
    checkboxModel = createModel(context, () => CheckboxModel());
  }

  @override
  void dispose() {
    checkboxModel.dispose();
  }
}
