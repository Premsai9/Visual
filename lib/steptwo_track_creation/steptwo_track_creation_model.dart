import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'steptwo_track_creation_widget.dart' show SteptwoTrackCreationWidget;
import 'package:flutter/material.dart';

class SteptwoTrackCreationModel
    extends FlutterFlowModel<SteptwoTrackCreationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_newtrackaudio = false;
  FFUploadedFile uploadedLocalFile_newtrackaudio =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_newtrackaudio = '';

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for VideoURL widget.
  FocusNode? videoURLFocusNode;
  TextEditingController? videoURLTextController;
  String? Function(BuildContext, String?)? videoURLTextControllerValidator;
  bool isDataUploading_trackImages = false;
  FFUploadedFile uploadedLocalFile_trackImages =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_trackImages = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    videoURLFocusNode?.dispose();
    videoURLTextController?.dispose();
  }
}
