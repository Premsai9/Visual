import '/components/record_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'recordcomponent_model.dart';
export 'recordcomponent_model.dart';

class RecordcomponentWidget extends StatefulWidget {
  const RecordcomponentWidget({
    super.key,
    required this.trackid,
    this.recordingid,
  });

  final String? trackid;
  final String? recordingid;

  @override
  State<RecordcomponentWidget> createState() => _RecordcomponentWidgetState();
}

class _RecordcomponentWidgetState extends State<RecordcomponentWidget> {
  late RecordcomponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordcomponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryText,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.6,
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1E),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Hello Worldhat error is coming from the fact that your widget is trying to read the results of a Supabase/PostgREST query via PostgrestRequest.of(context) (under the hood) but you never wrapped that subtree in the FlutterFlow-generated Query widget that provides it.\n\nIn FlutterFlow you have two ways to fetch Supabase data:\n\nPage-level Query (preferred)\n\nInline “Supabase Query” widget in the widget tree\n\nWhichever method you choose, any widget that tries to consume the query’s data must be a descendant of that Query node. Otherwise you’ll see exactly that error: “Postgres request node is not an ancestor of the current node.”\n\nOption A: Move to a Page-Level Query\nOpen your page in the Page Editor.\n\nClick the Queries tab on the right.\n\n+ Add Query → Supabase Query and configure your table/view, filters, limits, etc.\n\nToggle Run on Page Load.\n\nNow in your widgets you can bind to that query’s results (e.g. QueryMyView.myViewList) without any extra wrapping.\n\nBecause the page-level query runs above the widget tree, all your widgets have access to it.\n\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                wrapWithModel(
                  model: _model.recordModel,
                  updateCallback: () => safeSetState(() {}),
                  child: RecordWidget(
                    trackid: widget.trackid!,
                    id: widget.recordingid,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
