import '/flutter_flow/flutter_flow_util.dart';
import 'category_selector_widget.dart' show CategorySelectorWidget;
import 'package:flutter/material.dart';

class CategorySelectorModel extends FlutterFlowModel<CategorySelectorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
