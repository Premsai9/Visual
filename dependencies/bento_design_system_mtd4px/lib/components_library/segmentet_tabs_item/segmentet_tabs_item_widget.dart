import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'segmentet_tabs_item_model.dart';
export 'segmentet_tabs_item_model.dart';

class SegmentetTabsItemWidget extends StatefulWidget {
  const SegmentetTabsItemWidget({
    super.key,
    bool? isActive,
    required this.label,
    required this.type,
  }) : this.isActive = isActive ?? false;

  final bool isActive;
  final String? label;
  final SegmentedTabsType? type;

  @override
  State<SegmentetTabsItemWidget> createState() =>
      _SegmentetTabsItemWidgetState();
}

class _SegmentetTabsItemWidgetState extends State<SegmentetTabsItemWidget> {
  late SegmentetTabsItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SegmentetTabsItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget!.isActive && (widget!.type == SegmentedTabsType.common)
            ? FlutterFlowTheme.of(context).libTextLight
            : Colors.transparent,
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          widget!.type == SegmentedTabsType.underline ? 0.0 : 6.0,
          0.0,
        )),
        border: Border.all(
          color: ((widget!.type == SegmentedTabsType.outline) ||
                      (widget!.type == SegmentedTabsType.simple)) &&
                  widget!.isActive
              ? FlutterFlowTheme.of(context).libBorder
              : Colors.transparent,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 6.0, 16.0, 6.0),
              child: AnimatedDefaultTextStyle(
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: widget!.isActive
                          ? FlutterFlowTheme.of(context).libLabel
                          : FlutterFlowTheme.of(context).libLabelLight,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.4,
                    ),
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Text(
                  valueOrDefault<String>(
                    widget!.label,
                    'Label',
                  ),
                ),
              ),
            ),
          ),
          if (widget!.type == SegmentedTabsType.underline)
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: widget!.isActive
                  ? FlutterFlowTheme.of(context).libLabel
                  : Colors.transparent,
            ),
        ],
      ),
    );
  }
}
