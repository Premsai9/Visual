import '/authenticationpages/loginsignup/loginsignup_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'entrypage_model.dart';
export 'entrypage_model.dart';

class EntrypageWidget extends StatefulWidget {
  const EntrypageWidget({super.key});

  static String routeName = 'Entrypage';
  static String routePath = '/entrypage';

  @override
  State<EntrypageWidget> createState() => _EntrypageWidgetState();
}

class _EntrypageWidgetState extends State<EntrypageWidget> {
  late EntrypageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntrypageModel());
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
          child: wrapWithModel(
            model: _model.loginsignupModel,
            updateCallback: () => safeSetState(() {}),
            child: LoginsignupWidget(),
          ),
        ),
      ),
    );
  }
}
