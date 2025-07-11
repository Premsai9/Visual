import '/authenticationpages/emailsignin/emailsignin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'emailsignup_model.dart';
export 'emailsignup_model.dart';

class EmailsignupWidget extends StatefulWidget {
  const EmailsignupWidget({super.key});

  static String routeName = 'Emailsignup';
  static String routePath = '/emailsignup';

  @override
  State<EmailsignupWidget> createState() => _EmailsignupWidgetState();
}

class _EmailsignupWidgetState extends State<EmailsignupWidget> {
  late EmailsignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailsignupModel());
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
            children: [
              Expanded(
                child: wrapWithModel(
                  model: _model.emailsigninModel,
                  updateCallback: () => safeSetState(() {}),
                  child: EmailsigninWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
