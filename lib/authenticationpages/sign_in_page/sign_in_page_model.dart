import '/authenticationpages/signin/signin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_page_widget.dart' show SignInPageWidget;
import 'package:flutter/material.dart';

class SignInPageModel extends FlutterFlowModel<SignInPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Signin component.
  late SigninModel signinModel;

  @override
  void initState(BuildContext context) {
    signinModel = createModel(context, () => SigninModel());
  }

  @override
  void dispose() {
    signinModel.dispose();
  }
}
