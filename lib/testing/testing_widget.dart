import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'testing_model.dart';
export 'testing_model.dart';

class TestingWidget extends StatefulWidget {
  const TestingWidget({super.key});

  static String routeName = 'testing';
  static String routePath = '/testing';

  @override
  State<TestingWidget> createState() => _TestingWidgetState();
}

class _TestingWidgetState extends State<TestingWidget> {
  late TestingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestingModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryText,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).headlineMediumIsCustom,
                    ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                child: Container(
                  width: double.infinity,
                  height: 400.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200.0,
                        color: FlutterFlowTheme.of(context).success,
                        child: ExpandableNotifier(
                          controller: _model.expandableExpandableController,
                          child: ExpandablePanel(
                            header: Text(
                              'Header',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleLargeFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .titleLargeIsCustom,
                                  ),
                            ),
                            collapsed: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Collapsed body text',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0x8A000000),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ],
                            ),
                            expanded: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Expanded body texthow to make expandable widget scrollable in flutterflow\n1. Wrap the Expandable Content with SingleChildScrollView\nFlutterFlow does not directly show SingleChildScrollView, but you can achieve it using a Column inside a ListView or Scrollable Column.\n\n2. Basic Structure\nHere\'s how to structure your widget:\n\nUse a ListView or Scrollable Column for the whole screen.\n\nInside it, use the Expandable Widget (e.g., an ExpansionTile, Custom Accordion, or any logic using Visibility or AnimatedContainer).\n\nInside the expanded section, place your content within a Column or ListView depending on how much content you expect.\n\n💡 FlutterFlow UI Setup Example\nAdd a ListView to the page — this makes the whole page scrollable.\n\nInside ListView, add a Container — this will act as your expandable tile header.\n\nAdd a Boolean State Variable, e.g., isExpanded.\n\nOn Tap of the Header, toggle isExpanded.\n\nBelow the Header Container, add a Visibility widget:\n\nSet its visibility to isExpanded.\n\nInside the Visibility, place a Column or another ListView (if content is long).\n\nNow the expanded part will be scrollable.\n\n📌 Optional: Using AnimatedContainer for Smooth Expansion\nFor better UI, wrap the expanded content in an AnimatedContainer with height that changes based on isExpanded.\n\n⚠️ Notes\nMake sure your expandable content does not break layout constraints — e.g., don\'t put ListView inside Column without setting height.\n\nAlways test on devices with small screens to verify scroll behavior.\n\nWould you like a FlutterFlow prompt to generate this scrollable expandable UI using AI?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0x8A000000),
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
