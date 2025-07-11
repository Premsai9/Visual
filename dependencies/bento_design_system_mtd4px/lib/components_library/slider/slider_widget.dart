import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'slider_model.dart';
export 'slider_model.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    super.key,
    required this.size,
    required this.min,
    required this.max,
    required this.initValue,
    this.label,
    required this.showValue,
    required this.divisions,
    this.onChange,
  });

  /// Sets the thickness and scale of the slider.
  final SliderSize? size;

  /// The minimum selectable value.
  final double? min;

  /// The maximum selectable value.
  final double? max;

  /// The slider’s initial position or value.
  final double? initValue;

  /// Optional text displayed above or beside the slider.
  final String? label;

  /// Toggles display of the current value.
  final bool? showValue;

  /// The number of divisions to display in the slider
  final int? divisions;

  /// Triggered when the slider value changes.
  final Future Function(double value)? onChange;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  late SliderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SliderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        _model.sliderValue,
                        formatType: FormatType.custom,
                        format: '#',
                        locale: '',
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
          Container(
            width: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Builder(
                  builder: (context) {
                    if (widget!.size == SliderSize.small) {
                      return LinearPercentIndicator(
                        percent: functions.convertToRange(
                            widget!.min!,
                            widget!.max!,
                            _model.sliderValue != null
                                ? _model.sliderValue!
                                : widget!.initValue!,
                            0.0,
                            1.0),
                        lineHeight: 2.0,
                        animation: false,
                        animateFromLastPercent: true,
                        progressColor:
                            FlutterFlowTheme.of(context).libBgPrimary,
                        backgroundColor: FlutterFlowTheme.of(context).libBorder,
                        barRadius: Radius.circular(999.0),
                        padding: EdgeInsets.zero,
                      );
                    } else if (widget!.size == SliderSize.medium) {
                      return LinearPercentIndicator(
                        percent: functions.convertToRange(
                            widget!.min!,
                            widget!.max!,
                            _model.sliderValue != null
                                ? _model.sliderValue!
                                : widget!.initValue!,
                            0.0,
                            1.0),
                        lineHeight: 4.0,
                        animation: false,
                        animateFromLastPercent: true,
                        progressColor:
                            FlutterFlowTheme.of(context).libBgPrimary,
                        backgroundColor: FlutterFlowTheme.of(context).libBorder,
                        barRadius: Radius.circular(999.0),
                        padding: EdgeInsets.zero,
                      );
                    } else {
                      return LinearPercentIndicator(
                        percent: functions.convertToRange(
                            widget!.min!,
                            widget!.max!,
                            _model.sliderValue != null
                                ? _model.sliderValue!
                                : widget!.initValue!,
                            0.0,
                            1.0),
                        lineHeight: 6.0,
                        animation: false,
                        animateFromLastPercent: true,
                        progressColor:
                            FlutterFlowTheme.of(context).libBgPrimary,
                        backgroundColor: FlutterFlowTheme.of(context).libBorder,
                        barRadius: Radius.circular(999.0),
                        padding: EdgeInsets.zero,
                      );
                    }
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(
                      valueOrDefault<double>(
                        functions.convertToRange(
                            widget!.min!,
                            widget!.max!,
                            _model.sliderValue != null
                                ? _model.sliderValue!
                                : widget!.initValue!,
                            -1.0,
                            1.0),
                        0.0,
                      ),
                      0.0),
                  child: Container(
                    width: () {
                      if (widget!.size == SliderSize.small) {
                        return 10.0;
                      } else if (widget!.size == SliderSize.medium) {
                        return 12.0;
                      } else {
                        return 14.0;
                      }
                    }(),
                    height: () {
                      if (widget!.size == SliderSize.small) {
                        return 10.0;
                      } else if (widget!.size == SliderSize.medium) {
                        return 12.0;
                      } else {
                        return 14.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).libBgSecondary,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).libBgPrimary,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Container(
                    height: () {
                      if (widget!.size == SliderSize.small) {
                        return 10.0;
                      } else if (widget!.size == SliderSize.medium) {
                        return 12.0;
                      } else {
                        return 14.0;
                      }
                    }(),
                    decoration: BoxDecoration(),
                    child: Slider(
                      activeColor: FlutterFlowTheme.of(context).primary,
                      inactiveColor: FlutterFlowTheme.of(context).alternate,
                      min: valueOrDefault<double>(
                        widget!.min,
                        0.0,
                      ),
                      max: valueOrDefault<double>(
                        widget!.max,
                        10.0,
                      ),
                      value: _model.sliderValue ??= valueOrDefault<double>(
                        widget!.initValue,
                        5.0,
                      ),
                      divisions: widget!.divisions!,
                      onChanged: (newValue) async {
                        newValue = double.parse(newValue.toStringAsFixed(6));
                        safeSetState(() => _model.sliderValue = newValue);
                        await widget.onChange?.call(
                          _model.sliderValue!,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ].divide(SizedBox(height: 4.0)),
      ),
    );
  }
}
