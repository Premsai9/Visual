import '/flutter_flow/flutter_flow_util.dart';
import 'action2_sheet_simple_widget.dart' show Action2SheetSimpleWidget;
import 'package:flutter/material.dart';

class Action2SheetSimpleModel
    extends FlutterFlowModel<Action2SheetSimpleWidget> {
  ///  Local state fields for this component.

  String? isselected;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_localuploadnew = false;
  FFUploadedFile uploadedLocalFile_localuploadnew =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_localuploadnew = '';

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
