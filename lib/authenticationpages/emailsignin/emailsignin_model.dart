import '/flutter_flow/flutter_flow_util.dart';
import 'emailsignin_widget.dart' show EmailsigninWidget;
import 'package:flutter/material.dart';

class EmailsigninModel extends FlutterFlowModel<EmailsigninWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for Re-enterpassword widget.
  FocusNode? reEnterpasswordFocusNode;
  TextEditingController? reEnterpasswordTextController;
  late bool reEnterpasswordVisibility;
  String? Function(BuildContext, String?)?
      reEnterpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    reEnterpasswordVisibility = false;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    reEnterpasswordFocusNode?.dispose();
    reEnterpasswordTextController?.dispose();
  }
}
