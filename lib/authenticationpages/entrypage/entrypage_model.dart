import '/authenticationpages/loginsignup/loginsignup_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrypage_widget.dart' show EntrypageWidget;
import 'package:flutter/material.dart';

class EntrypageModel extends FlutterFlowModel<EntrypageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Loginsignup component.
  late LoginsignupModel loginsignupModel;

  @override
  void initState(BuildContext context) {
    loginsignupModel = createModel(context, () => LoginsignupModel());
  }

  @override
  void dispose() {
    loginsignupModel.dispose();
  }
}
