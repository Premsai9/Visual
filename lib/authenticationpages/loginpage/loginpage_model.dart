import '/authenticationpages/login/login_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Login component.
  late LoginModel loginModel;

  @override
  void initState(BuildContext context) {
    loginModel = createModel(context, () => LoginModel());
  }

  @override
  void dispose() {
    loginModel.dispose();
  }
}
