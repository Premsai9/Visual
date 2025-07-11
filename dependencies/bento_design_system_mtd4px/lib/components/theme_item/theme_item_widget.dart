import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'theme_item_model.dart';
export 'theme_item_model.dart';

class ThemeItemWidget extends StatefulWidget {
  const ThemeItemWidget({
    super.key,
    required this.image,
    required this.label,
    required this.isSelected,
  });

  final String? image;
  final String? label;
  final bool? isSelected;

  @override
  State<ThemeItemWidget> createState() => _ThemeItemWidgetState();
}

class _ThemeItemWidgetState extends State<ThemeItemWidget> {
  late ThemeItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThemeItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                color: widget!.isSelected!
                    ? Color(0xFF71AFF5)
                    : Colors.transparent,
                width: 2.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Image.network(
                widget!.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget!.label,
              'Label',
            ),
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodySmall.fontWeight,
                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FlutterFlowTheme.of(context).bodySmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
