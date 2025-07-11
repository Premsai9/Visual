import '/authenticationpages/emailsignin/emailsignin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emailsignup_widget.dart' show EmailsignupWidget;
import 'package:flutter/material.dart';

class EmailsignupModel extends FlutterFlowModel<EmailsignupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Emailsignin component.
  late EmailsigninModel emailsigninModel;

  @override
  void initState(BuildContext context) {
    emailsigninModel = createModel(context, () => EmailsigninModel());
  }

  @override
  void dispose() {
    emailsigninModel.dispose();
  }
}
