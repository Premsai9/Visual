import '/backend/schema/enums/enums.dart';
import '/components_library/button/button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'file_upload_dialog_widget.dart' show FileUploadDialogWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FileUploadDialogModel extends FlutterFlowModel<FileUploadDialogWidget> {
  ///  Local state fields for this component.

  List<FFUploadedFile> uploadedFiles = [];
  void addToUploadedFiles(FFUploadedFile item) => uploadedFiles.add(item);
  void removeFromUploadedFiles(FFUploadedFile item) =>
      uploadedFiles.remove(item);
  void removeAtIndexFromUploadedFiles(int index) =>
      uploadedFiles.removeAt(index);
  void insertAtIndexInUploadedFiles(int index, FFUploadedFile item) =>
      uploadedFiles.insert(index, item);
  void updateUploadedFilesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedFiles[index] = updateFn(uploadedFiles[index]);

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_newFiles = false;
  List<FFUploadedFile> uploadedLocalFiles_newFiles = [];

  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for Button component.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
