import '/components_library/dialog_list_empty_state/dialog_list_empty_state_widget.dart';
import '/components_library/searchable_dropdown_dialog_item/searchable_dropdown_dialog_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'searchable_dropdown_dialog_widget.dart'
    show SearchableDropdownDialogWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchableDropdownDialogModel
    extends FlutterFlowModel<SearchableDropdownDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for SearchableDropdownDialog_Item dynamic component.
  late FlutterFlowDynamicModels<SearchableDropdownDialogItemModel>
      searchableDropdownDialogItemModels;

  @override
  void initState(BuildContext context) {
    searchableDropdownDialogItemModels =
        FlutterFlowDynamicModels(() => SearchableDropdownDialogItemModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    searchableDropdownDialogItemModels.dispose();
  }
}
