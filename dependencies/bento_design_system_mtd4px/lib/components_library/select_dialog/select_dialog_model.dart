import '/components_library/dialog_list_empty_state/dialog_list_empty_state_widget.dart';
import '/components_library/select_dialog_item/select_dialog_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_dialog_widget.dart' show SelectDialogWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SelectDialogModel extends FlutterFlowModel<SelectDialogWidget> {
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

  // Models for SelectDialog_Item dynamic component.
  late FlutterFlowDynamicModels<SelectDialogItemModel> selectDialogItemModels;

  @override
  void initState(BuildContext context) {
    selectDialogItemModels =
        FlutterFlowDynamicModels(() => SelectDialogItemModel());
  }

  @override
  void dispose() {
    selectDialogItemModels.dispose();
  }
}
