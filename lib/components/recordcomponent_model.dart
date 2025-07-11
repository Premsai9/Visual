import '/components/record_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recordcomponent_widget.dart' show RecordcomponentWidget;
import 'package:flutter/material.dart';

class RecordcomponentModel extends FlutterFlowModel<RecordcomponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Record component.
  late RecordModel recordModel;

  @override
  void initState(BuildContext context) {
    recordModel = createModel(context, () => RecordModel());
  }

  @override
  void dispose() {
    recordModel.dispose();
  }
}
