import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_password_copy_widget.dart' show ForgotPasswordCopyWidget;
import 'package:flutter/material.dart';

class ForgotPasswordCopyModel
    extends FlutterFlowModel<ForgotPasswordCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Newpassword widget.
  FocusNode? newpasswordFocusNode1;
  TextEditingController? newpasswordTextController1;
  String? Function(BuildContext, String?)? newpasswordTextController1Validator;
  // State field(s) for Newpassword widget.
  FocusNode? newpasswordFocusNode2;
  TextEditingController? newpasswordTextController2;
  String? Function(BuildContext, String?)? newpasswordTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newpasswordFocusNode1?.dispose();
    newpasswordTextController1?.dispose();

    newpasswordFocusNode2?.dispose();
    newpasswordTextController2?.dispose();
  }
}
