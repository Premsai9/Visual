import '/components/record_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'record_voice_copy_widget.dart' show RecordVoiceCopyWidget;
import 'package:flutter/material.dart';

class RecordVoiceCopyModel extends FlutterFlowModel<RecordVoiceCopyWidget> {
  ///  Local state fields for this component.

  String? isselected;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  bool isDataUploading_localupload = false;
  FFUploadedFile uploadedLocalFile_localupload =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_localupload = '';

  // Model for Record component.
  late RecordModel recordModel;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    recordModel = createModel(context, () => RecordModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    recordModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
