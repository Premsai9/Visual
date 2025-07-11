import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_model.dart';
export 'checkbox_model.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({
    super.key,
    this.initValue,
    this.onChange,
    this.label,
    bool? disabled,
    required this.type,
    required this.size,
  }) : this.disabled = disabled ?? false;

  /// Sets the initial checked or unchecked state.
  final bool? initValue;

  /// Triggered when the checkbox state changes.
  final Future Function(bool value)? onChange;

  /// Text displayed next to the checkbox.
  final String? label;

  /// Disables the checkbox, making it non-interactive.
  final bool disabled;

  /// Defines the checkbox style.
  final CheckboxType? type;

  /// Specifies the size of the checkbox.
  final CheckboxSize? size;

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  late CheckboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isChecked = widget!.initValue!;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (!widget!.disabled) {
                  _model.isChecked = !_model.isChecked;
                  safeSetState(() {});
                  await widget.onChange?.call(
                    _model.isChecked,
                  );
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    width: () {
                      if (widget!.size == CheckboxSize.small) {
                        return 14.0;
                      } else if (widget!.size == CheckboxSize.medium) {
                        return 18.0;
                      } else {
                        return 20.0;
                      }
                    }(),
                    height: () {
                      if (widget!.size == CheckboxSize.small) {
                        return 14.0;
                      } else if (widget!.size == CheckboxSize.medium) {
                        return 18.0;
                      } else {
                        return 20.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      color: _model.isChecked
                          ? FlutterFlowTheme.of(context).libChecked
                          : Colors.transparent,
                      borderRadius:
                          BorderRadius.circular(valueOrDefault<double>(
                        widget!.type == CheckboxType.common ? 4.0 : 999.0,
                        0.0,
                      )),
                      border: Border.all(
                        color: _model.isChecked
                            ? FlutterFlowTheme.of(context).libChecked
                            : FlutterFlowTheme.of(context).libBorder,
                      ),
                    ),
                    child: AnimatedOpacity(
                      opacity: _model.isChecked ? 1.0 : 0.0,
                      duration: 300.0.ms,
                      curve: Curves.easeInOut,
                      child: Icon(
                        Icons.check_rounded,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: widget!.size == CheckboxSize.small ? 12.0 : 16.0,
                      ),
                    ),
                  ),
                  if (widget!.label != null && widget!.label != '')
                    Text(
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
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                ].divide(SizedBox(width: 12.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
