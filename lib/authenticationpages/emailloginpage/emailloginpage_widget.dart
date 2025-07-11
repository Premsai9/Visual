import '/authenticationpages/email_login/email_login_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'emailloginpage_model.dart';
export 'emailloginpage_model.dart';

class EmailloginpageWidget extends StatefulWidget {
  const EmailloginpageWidget({super.key});

  static String routeName = 'Emailloginpage';
  static String routePath = '/emailloginpage';

  @override
  State<EmailloginpageWidget> createState() => _EmailloginpageWidgetState();
}

class _EmailloginpageWidgetState extends State<EmailloginpageWidget> {
  late EmailloginpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailloginpageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.emailLoginModel,
                  updateCallback: () => safeSetState(() {}),
                  child: EmailLoginWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
