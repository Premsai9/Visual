import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sw_itch_model.dart';
export 'sw_itch_model.dart';

class SwItchWidget extends StatefulWidget {
  const SwItchWidget({
    super.key,
    required this.initValue,
    this.onIcon,
    this.offIcon,
    required this.size,
    bool? disabled,
    required this.onChange,
  }) : this.disabled = disabled ?? false;

  /// Sets the initial on/off state of the switch.
  final bool? initValue;

  /// Icon displayed when the switch is in the "on" state.
  final Widget? onIcon;

  /// Icon displayed when the switch is in the "off" state.
  final Widget? offIcon;

  /// Controls the overall size of the switch.
  final SwitchSize? size;

  /// Disables the switch, preventing user interaction.
  final bool disabled;

  /// Triggered when the switch state changes.
  final Future Function(bool value)? onChange;

  @override
  State<SwItchWidget> createState() => _SwItchWidgetState();
}

class _SwItchWidgetState extends State<SwItchWidget> {
  late SwItchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwItchModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.value = widget!.initValue!;
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
    return AnimatedOpacity(
      opacity: widget!.disabled ? 0.5 : 1.0,
      duration: 300.0.ms,
      curve: Curves.easeInOut,
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (!widget!.disabled) {
                  _model.value = !_model.value;
                  safeSetState(() {});
                  await widget.onChange?.call(
                    _model.value,
                  );
                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  width: () {
                    if (widget!.size == SwitchSize.small) {
                      return 44.0;
                    } else if (widget!.size == SwitchSize.medium) {
                      return 48.0;
                    } else {
                      return 52.0;
                    }
                  }(),
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      _model.value
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).libBorder,
                      FlutterFlowTheme.of(context).libBorder,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(
                        valueOrDefault<double>(
                          _model.value ? 1.0 : -1.0,
                          -1.0,
                        ),
                        0.0),
                    child: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        width: () {
                          if (widget!.size == SwitchSize.small) {
                            return 20.0;
                          } else if (widget!.size == SwitchSize.medium) {
                            return 24.0;
                          } else {
                            return 28.0;
                          }
                        }(),
                        height: () {
                          if (widget!.size == SwitchSize.small) {
                            return 20.0;
                          } else if (widget!.size == SwitchSize.medium) {
                            return 24.0;
                          } else {
                            return 28.0;
                          }
                        }(),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15.0,
                              color: Color(0x19000000),
                              offset: Offset(
                                0.0,
                                10.0,
                              ),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Visibility(
                          visible: (widget!.onIcon != null) &&
                              (widget!.offIcon != null),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                if (_model.value) {
                                  return widget!.onIcon!;
                                } else {
                                  return widget!.offIcon!;
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
