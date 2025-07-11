import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
export 'counter_model.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({
    super.key,
    required this.size,
    required this.type,
    required this.initValue,
    required this.disabled,
    this.onChange,
  });

  /// Controls the overall dimensions of the counter.
  final CounterSize? size;

  /// Defines the visual style or layout of the counter.
  final CounterType? type;

  /// Sets the initial numeric value when the counter loads.
  final int? initValue;

  /// Disables user interaction, making the counter read-only.
  final bool? disabled;

  /// Triggered whenever the counter value changes.
  final Future Function(int value)? onChange;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late CounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.value = widget!.initValue;
      safeSetState(() {});
    });
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
        color: () {
          if (widget!.type == CounterType.outlined) {
            return Colors.transparent;
          } else if (widget!.type == CounterType.separated) {
            return Colors.transparent;
          } else {
            return FlutterFlowTheme.of(context).libBgLight;
          }
        }(),
        borderRadius: BorderRadius.circular(valueOrDefault<double>(
          widget!.type == CounterType.rounded ? 999.0 : 8.0,
          0.0,
        )),
        border: Border.all(
          color: widget!.type == CounterType.outlined
              ? FlutterFlowTheme.of(context).libBorder
              : Colors.transparent,
          width: widget!.type == CounterType.outlined ? 1.0 : 0.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            valueOrDefault<double>(
              () {
                if (widget!.size == CounterSize.small) {
                  return 4.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 6.0;
                } else {
                  return 8.0;
                }
              }(),
              0.0,
            ),
            4.0,
            valueOrDefault<double>(
              () {
                if (widget!.size == CounterSize.small) {
                  return 4.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 6.0;
                } else {
                  return 8.0;
                }
              }(),
              0.0,
            ),
            4.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              height: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              decoration: BoxDecoration(
                color: widget!.type == CounterType.separated
                    ? FlutterFlowTheme.of(context).libBgLight
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(999.0),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if ((_model.value! > 1) && !widget!.disabled!) {
                    _model.value = _model.value! + -1;
                    safeSetState(() {});
                    await widget.onChange?.call(
                      _model.value!,
                    );
                  }
                },
                child: Icon(
                  Icons.remove_rounded,
                  color: widget!.disabled!
                      ? FlutterFlowTheme.of(context).libLabelLight
                      : FlutterFlowTheme.of(context).libTextDark,
                  size: () {
                    if (widget!.size == CounterSize.small) {
                      return 20.0;
                    } else if (widget!.size == CounterSize.medium) {
                      return 22.0;
                    } else {
                      return 24.0;
                    }
                  }(),
                ),
              ),
            ),
            Container(
              width: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              height: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              decoration: BoxDecoration(
                color: () {
                  if (widget!.type == CounterType.outlined) {
                    return Colors.transparent;
                  } else if (widget!.type == CounterType.separated) {
                    return Colors.transparent;
                  } else {
                    return FlutterFlowTheme.of(context).libTextLight;
                  }
                }(),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6.0,
                    color: (widget!.type == CounterType.separated) ||
                            (widget!.type == CounterType.outlined)
                        ? Colors.transparent
                        : Color(0x0B000000),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(valueOrDefault<double>(
                  widget!.type == CounterType.rounded ? 999.0 : 4.0,
                  0.0,
                )),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    _model.value?.toString(),
                    '1',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w500,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).libTextDark,
                        fontSize: () {
                          if (widget!.size == CounterSize.small) {
                            return 14.0;
                          } else if (widget!.size == CounterSize.medium) {
                            return 15.0;
                          } else {
                            return 16.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
              ),
            ),
            Container(
              width: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              height: () {
                if (widget!.size == CounterSize.small) {
                  return 32.0;
                } else if (widget!.size == CounterSize.medium) {
                  return 36.0;
                } else {
                  return 40.0;
                }
              }(),
              decoration: BoxDecoration(
                color: widget!.type == CounterType.separated
                    ? FlutterFlowTheme.of(context).libBgLight
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(999.0),
              ),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if ((_model.value! < 99) && !widget!.disabled!) {
                    _model.value = _model.value! + 1;
                    safeSetState(() {});
                    await widget.onChange?.call(
                      _model.value!,
                    );
                  }
                },
                child: Icon(
                  Icons.add_rounded,
                  color: widget!.disabled!
                      ? FlutterFlowTheme.of(context).libLabelLight
                      : FlutterFlowTheme.of(context).libTextDark,
                  size: () {
                    if (widget!.size == CounterSize.small) {
                      return 20.0;
                    } else if (widget!.size == CounterSize.medium) {
                      return 22.0;
                    } else {
                      return 24.0;
                    }
                  }(),
                ),
              ),
            ),
          ].divide(SizedBox(width: () {
            if (widget!.size == CounterSize.small) {
              return 4.0;
            } else if (widget!.size == CounterSize.medium) {
              return 6.0;
            } else {
              return 8.0;
            }
          }())),
        ),
      ),
    );
  }
}
