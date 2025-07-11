import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chip_model.dart';
export 'chip_model.dart';

class ChipWidget extends StatefulWidget {
  const ChipWidget({
    super.key,
    required this.label,
    required this.type,
    required this.size,
    required this.color,
  });

  /// Text displayed inside the chip.
  final String? label;

  /// Defines the visual style of the chip.
  final ChipType? type;

  /// Sets the overall size of the chip.
  final ChipSize? size;

  /// Determines the chip's background or accent color.
  final Color? color;

  @override
  State<ChipWidget> createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  late ChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget!.size == ChipSize.small ? 24.0 : 28.0,
      decoration: BoxDecoration(
        color:
            (widget!.type == ChipType.solid) || (widget!.type == ChipType.faded)
                ? FlutterFlowTheme.of(context).libBgLight
                : FlutterFlowTheme.of(context).libTextLight,
        borderRadius: BorderRadius.circular(999.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            widget!.type == ChipType.solid ? Colors.transparent : widget!.color,
            FlutterFlowTheme.of(context).primaryText,
          ),
          width: widget!.type == ChipType.solid ? 0.0 : 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget!.type == ChipType.dot)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                child: Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    color: widget!.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            Text(
              valueOrDefault<String>(
                widget!.label,
                'Chip',
              ),
              style: FlutterFlowTheme.of(context).bodySmall.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    ),
                    color: widget!.color,
                    fontSize: widget!.size == ChipSize.small ? 12.0 : 14.0,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                    lineHeight: 1.4,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
