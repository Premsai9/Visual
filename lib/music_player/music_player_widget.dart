import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'music_player_model.dart';
export 'music_player_model.dart';

class MusicPlayerWidget extends StatefulWidget {
  const MusicPlayerWidget({super.key});

  static String routeName = 'MusicPlayer';
  static String routePath = '/musicPlayer';

  @override
  State<MusicPlayerWidget> createState() => _MusicPlayerWidgetState();
}

class _MusicPlayerWidgetState extends State<MusicPlayerWidget> {
  late MusicPlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicPlayerModel());
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
        backgroundColor: Color(0xFF121A2E),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF121A2E),
                  Color(0xFF2A1A4A),
                  Color(0xFF1A2A3E)
                ],
                stops: [0.0, 0.5, 1.0],
                begin: AlignmentDirectional(1.0, 1.0),
                end: AlignmentDirectional(-1.0, -1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 32.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 20.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                      Text(
                        'Career Goals',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFFB8C7E0),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                      Text(
                        'Visualize Your Success Path',
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineSmallIsCustom,
                                ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 280.0,
                      height: 280.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30.0,
                            color: Color(0x4A3A2A5A),
                            offset: Offset(
                              0.0,
                              10.0,
                            ),
                          )
                        ],
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'For most FlutterFlow projects, leveraging built-in Backend Queries is the simpler, more maintainable approach—especially when you’re working with standard CRUD against a supported data source (Firebase, Supabase, REST endpoints with simple JSON). You get automatic pagination, offline caching, type-safe bindings, and visual query builders without writing code. However, if you need advanced data transformations, complex joins, or want to centralize business logic on a server (e.g. aggregate computations, multi-table joins, or specialized DTOs), then using a Custom API Call that returns a tailored data structure can be the better choice.\n\n1. Built-in Backend Queries in FlutterFlow\nPros\nZero Code / Visual Builder: Configure queries directly in the UI with point-and-click filters, sorting, and pagination.\n\nType Safety & Binding: FlutterFlow generates strongly typed data objects you can bind to widgets without manual parsing.\n\nOffline Support & Caching: Automatic caching for many data sources (e.g. Firestore) and built-in state management.\n\nRealtime Updates: For services like Firestore, you get live data sync with no extra work.\n\nCons\nLimited Custom Logic: You’re constrained to the query capabilities exposed in FlutterFlow. Complex joins, computed fields, or deeply nested data may not be supported.\n\nPerformance Tuning: Very large result sets or heavy filtering can require workarounds like Cloud Functions or paginated sub-queries.\n\n2. Custom API Calls with Custom Data Types\nPros\nFull Control Over Payload: You define exactly which fields, nested objects, and computed values come back—no over-fetching or under-fetching.\n\nCentralized Business Logic: Aggregations, joins across multiple tables, or access checks live server-side (e.g., in a Cloud Function or Supabase Edge Function).\n\nCustom Authentication / Headers: Easier to integrate with third-party services or microservices that require bespoke auth flows.\n\nCons\nMore Code & Maintenance: You must write, deploy, and version your API endpoints, and manually map JSON into FlutterFlow’s custom data types.\n\nNo Automatic Caching: FlutterFlow won’t cache custom REST calls—you’ll need to manage loading states and potential retries yourself.\n\nLonger Iteration Loop: Changes to your data contract require updates both on the server and in FlutterFlow’s API schema.\n\n3. Which to Choose for Your App\nUse Built-in Backend Queries When…\n\nYou’re primarily displaying or editing records in one or two tables (e.g., tracks, recordings, playlists).\n\nYou want rapid prototyping with minimal backend code.\n\nYou need realtime sync (e.g., likes/dislikes updating live).\n\nUse Custom API Calls When…\n\nYou need complex joins (e.g., fetching a track along with nested creator profile and top 3 public recordings).\n\nYou want aggregated statistics (total likes per track, AI usage counts combined with plan info).\n\nYou’re integrating external services (e.g., AI generation endpoints) whose responses don’t match your database schema.\n\n4. Hybrid Approach\nOften the best pattern is hybrid:\n\nCore Data (categories, tracks, user profiles) via built-in queries for speed and simplicity.\n\nSpecialized Endpoints for advanced features—such as AI-generated track creation or aggregated “feed” queries—exposed as custom API calls.\n\nThis gives you fast, low-code development for most screens, with the flexibility to drop into custom endpoints whenever you hit the limits of the visual query builder.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2:34',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFFB8C7E0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Text(
                                '8:15',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFFB8C7E0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0x33FFFFFF),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Container(
                              width: 120.0,
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF9D78FF),
                                borderRadius: BorderRadius.circular(3.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 30.0,
                            buttonSize: 60.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.replay_10_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 40.0,
                            buttonSize: 80.0,
                            fillColor: Color(0xFF9D78FF),
                            icon: Icon(
                              Icons.pause_rounded,
                              color: Colors.white,
                              size: 40.0,
                            ),
                            onPressed: () async {
                              await actions.newCustomAction(
                                'Hi i am testing',
                              );
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 30.0,
                            buttonSize: 60.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.forward_10_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 25.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 25.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.thumb_down_outlined,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 25.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.star_outline_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 25.0,
                            buttonSize: 50.0,
                            fillColor: Color(0x22FFFFFF),
                            icon: Icon(
                              Icons.playlist_add_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ].divide(SizedBox(width: 20.0)),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x22FFFFFF),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 80.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF9D78FF),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'TTS',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Uploaded',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFB8C7E0),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'My Voice',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFB8C7E0),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 80.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  'Others',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFFB8C7E0),
                                        letterSpacing: 0.0,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
