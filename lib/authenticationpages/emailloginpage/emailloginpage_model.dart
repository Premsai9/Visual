import '/authenticationpages/email_login/email_login_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emailloginpage_widget.dart' show EmailloginpageWidget;
import 'package:flutter/material.dart';

class EmailloginpageModel extends FlutterFlowModel<EmailloginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EmailLogin component.
  late EmailLoginModel emailLoginModel;

  @override
  void initState(BuildContext context) {
    emailLoginModel = createModel(context, () => EmailLoginModel());
  }

  @override
  void dispose() {
    emailLoginModel.dispose();
  }
}
