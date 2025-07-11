import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'progressbar_model.dart';
export 'progressbar_model.dart';

class ProgressbarWidget extends StatefulWidget {
  const ProgressbarWidget({
    super.key,
    required this.size,
    this.label,
    required this.showValue,
    required this.value,
  });

  /// Sets the thickness and overall scale of the progress bar
  final ProgressbarSize? size;

  /// Optional text displayed above or alongside the bar.
  final String? label;

  /// Toggles the visibility of the numeric progress value.
  final bool? showValue;

  /// Defines the current progress.
  final double? value;

  @override
  State<ProgressbarWidget> createState() => _ProgressbarWidgetState();
}

class _ProgressbarWidgetState extends State<ProgressbarWidget> {
  late ProgressbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgressbarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget!.showValue! ||
              (widget!.label != null && widget!.label != ''))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (widget!.label != null && widget!.label != '')
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          widget!.label,
                          'Label',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).libTextDark,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                  if (widget!.showValue ?? true)
                    Text(
                      formatNumber(
                        widget!.value,
                        formatType: FormatType.percent,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).libLabelLight,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          Builder(
            builder: (context) {
              if (widget!.size == ProgressbarSize.small) {
                return LinearPercentIndicator(
                  percent: widget!.value!,
                  lineHeight: 4.0,
                  animation: false,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).libBgPrimary,
                  backgroundColor: FlutterFlowTheme.of(context).libBorder,
                  barRadius: Radius.circular(120.0),
                  padding: EdgeInsets.zero,
                );
              } else if (widget!.size == ProgressbarSize.medium) {
                return LinearPercentIndicator(
                  percent: widget!.value!,
                  lineHeight: 8.0,
                  animation: false,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).libBgPrimary,
                  backgroundColor: FlutterFlowTheme.of(context).libBorder,
                  barRadius: Radius.circular(120.0),
                  padding: EdgeInsets.zero,
                );
              } else {
                return LinearPercentIndicator(
                  percent: widget!.value!,
                  lineHeight: 12.0,
                  animation: false,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).libBgPrimary,
                  backgroundColor: FlutterFlowTheme.of(context).libBorder,
                  barRadius: Radius.circular(120.0),
                  padding: EdgeInsets.zero,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
