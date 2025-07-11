import '/backend/schema/enums/enums.dart';
import '/components_library/segmentet_tabs_item/segmentet_tabs_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'segmented_tabs_model.dart';
export 'segmented_tabs_model.dart';

class SegmentedTabsWidget extends StatefulWidget {
  const SegmentedTabsWidget({
    super.key,
    required this.tabs,
    required this.content,
    required this.onChangeTab,
    required this.type,
  });

  /// A list of tab labels to display for navigation.
  final List<String>? tabs;

  /// Builds the content shown for each tab.
  final Widget Function()? content;

  /// Triggered when the user switches between tabs.
  final Future Function(int index)? onChangeTab;

  /// Defines the visual style of the tab navigation.
  final SegmentedTabsType? type;

  @override
  State<SegmentedTabsWidget> createState() => _SegmentedTabsWidgetState();
}

class _SegmentedTabsWidgetState extends State<SegmentedTabsWidget> {
  late SegmentedTabsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SegmentedTabsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget!.type == SegmentedTabsType.common
                ? FlutterFlowTheme.of(context).libBgLight
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: widget!.type == SegmentedTabsType.outline
                  ? FlutterFlowTheme.of(context).libBorder
                  : Colors.transparent,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(4.0),
                child: Builder(
                  builder: (context) {
                    final tabs = widget!.tabs!.toList();

                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(tabs.length, (tabsIndex) {
                        final tabsItem = tabs[tabsIndex];
                        return Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.activeIndex = tabsIndex;
                              safeSetState(() {});
                              await widget.onChangeTab?.call(
                                tabsIndex,
                              );
                            },
                            child: wrapWithModel(
                              model: _model.segmentetTabsItemModels.getModel(
                                tabsIndex.toString(),
                                tabsIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: SegmentetTabsItemWidget(
                                key: Key(
                                  'Key4vx_${tabsIndex.toString()}',
                                ),
                                isActive: _model.activeIndex == tabsIndex,
                                label: tabsItem,
                                type: widget!.type!,
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Builder(builder: (_) {
          return widget.content != null ? widget.content!() : SizedBox.shrink();
        }),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
