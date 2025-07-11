import '/components_library/dialog_list_empty_state/dialog_list_empty_state_widget.dart';
import '/components_library/select_dialog_item/select_dialog_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_dialog_model.dart';
export 'select_dialog_model.dart';

class SelectDialogWidget extends StatefulWidget {
  const SelectDialogWidget({
    super.key,
    required this.options,
    required this.selectedOptions,
    required this.onChangedSelection,
  });

  final List<String>? options;
  final List<String>? selectedOptions;
  final Future Function(List<String>? selectedItems)? onChangedSelection;

  @override
  State<SelectDialogWidget> createState() => _SelectDialogWidgetState();
}

class _SelectDialogWidgetState extends State<SelectDialogWidget> {
  late SelectDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDialogModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedOptions = widget!.selectedOptions!.toList().cast<String>();
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 300.0,
          maxHeight: 220.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x06000000),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).libBorder,
          ),
        ),
        child: Builder(
          builder: (context) {
            final items = widget!.options!.toList();
            if (items.isEmpty) {
              return DialogListEmptyStateWidget();
            }

            return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, itemsIndex) {
                final itemsItem = items[itemsIndex];
                return wrapWithModel(
                  model: _model.selectDialogItemModels.getModel(
                    itemsIndex.toString(),
                    itemsIndex,
                  ),
                  updateCallback: () => safeSetState(() {}),
                  child: SelectDialogItemWidget(
                    key: Key(
                      'Keym7x_${itemsIndex.toString()}',
                    ),
                    label: itemsItem,
                    isSelected:
                        (widget!.selectedOptions!).toList().contains(itemsItem),
                    onChange: (value) async {
                      if (value) {
                        _model.addToSelectedOptions(itemsItem);
                        safeSetState(() {});
                      } else {
                        _model.removeFromSelectedOptions(itemsItem);
                        safeSetState(() {});
                      }

                      await widget.onChangedSelection?.call(
                        _model.selectedOptions,
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
