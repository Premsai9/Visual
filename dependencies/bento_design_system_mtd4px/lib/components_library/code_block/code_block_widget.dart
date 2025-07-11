import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_block_model.dart';
export 'code_block_model.dart';

class CodeBlockWidget extends StatefulWidget {
  const CodeBlockWidget({
    super.key,
    required this.label,
    required this.size,
  });

  /// Text displayed in the code block.
  final String? label;

  /// Controls the padding and font size of the code block.
  final CodeBlockSize? size;

  @override
  State<CodeBlockWidget> createState() => _CodeBlockWidgetState();
}

class _CodeBlockWidgetState extends State<CodeBlockWidget> {
  late CodeBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeBlockModel());
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
        color: FlutterFlowTheme.of(context).libBgLight,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          valueOrDefault<String>(
            widget!.label,
            'import code from ff library',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.jetBrainsMono(
                  fontWeight: FontWeight.w300,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).libLabel,
                fontSize: () {
                  if (widget!.size == CodeBlockSize.small) {
                    return 12.0;
                  } else if (widget!.size == CodeBlockSize.medium) {
                    return 14.0;
                  } else {
                    return 16.0;
                  }
                }(),
                letterSpacing: 0.0,
                fontWeight: FontWeight.w300,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ),
    );
  }
}
