import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    super.key,
    required this.label,
    this.onClick,
    this.disabled,
    required this.type,
    required this.size,
    this.icon,
    this.iconPosition,
    required this.isLoading,
  });

  /// Text displayed on the button.
  final String? label;

  /// Action triggered when the button is pressed.
  final Future Function()? onClick;

  /// Disables the button, preventing interaction.
  final bool? disabled;

  /// Defines the visual style of the button.
  final ButtonType? type;

  /// Sets the button’s size.
  final ButtonSize? size;

  /// Optional icon displayed with the button label.
  final Widget? icon;

  /// Determines whether the icon appears before or after the label.
  final IconPosition? iconPosition;

  /// Optional show loading state if true.
  final bool? isLoading;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget!.disabled! ? 0.4 : 1.0,
      duration: 150.0.ms,
      curve: Curves.easeInOut,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (!(widget!.disabled! || widget!.isLoading!)) {
            await widget.onClick?.call();
          }
        },
        child: Container(
          height: widget!.size == ButtonSize.small ? 32.0 : 40.0,
          decoration: BoxDecoration(
            color: () {
              if (widget!.type == ButtonType.primary) {
                return FlutterFlowTheme.of(context).libBgPrimary;
              } else if (widget!.type == ButtonType.secondary) {
                return FlutterFlowTheme.of(context).libBgSecondary;
              } else {
                return Colors.transparent;
              }
            }(),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: widget!.type == ButtonType.outline
                  ? FlutterFlowTheme.of(context).libPlaceholder
                  : Color(0x00000000),
              width: widget!.type == ButtonType.outline ? 1.0 : 0.0,
            ),
          ),
          child: MouseRegion(
            opaque: false,
            cursor: SystemMouseCursors.click ?? MouseCursor.defer,
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                AnimatedOpacity(
                  opacity: widget!.isLoading! ? 0.0 : 1.0,
                  duration: 150.0.ms,
                  curve: Curves.easeInOut,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget!.iconPosition == IconPosition.trailing)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: widget!.icon!,
                          ),
                        Text(
                          valueOrDefault<String>(
                            widget!.label,
                            'Button',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: widget!.type == ButtonType.primary
                                    ? FlutterFlowTheme.of(context).libTextLight
                                    : FlutterFlowTheme.of(context).libTextDark,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                                lineHeight: 1.25,
                              ),
                        ),
                        if (widget!.iconPosition == IconPosition.leading)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            child: widget!.icon!,
                          ),
                      ],
                    ),
                  ),
                ),
                if ((widget!.type != ButtonType.primary) && widget!.isLoading!)
                  Lottie.asset(
                    'packages/bento_design_system_mtd4px/assets/jsons/animation-dark.json',
                    height: 40.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                if ((widget!.type == ButtonType.primary) && widget!.isLoading!)
                  Lottie.asset(
                    'packages/bento_design_system_mtd4px/assets/jsons/animation-light.json',
                    height: 40.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
              ],
            ),
            onEnter: ((event) async {
              safeSetState(() => _model.mouseRegionHovered = true);
            }),
            onExit: ((event) async {
              safeSetState(() => _model.mouseRegionHovered = false);
            }),
          ),
        ),
      ),
    );
  }
}
