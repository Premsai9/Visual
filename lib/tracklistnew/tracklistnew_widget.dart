import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tracklistnew_model.dart';
export 'tracklistnew_model.dart';

/// “Create a Track List Page for a selected category—with a calm,
/// pastel‐toned aesthetic and a clean, soothing layout—so that when a user
/// taps on “Love” (or any category), they see all associated tracks in a
/// visually relaxing list.
///
/// Layout & Style Guidelines:
///
/// App Bar
///
/// Height: standard (56 px) with a gentle drop shadow.
///
/// Background: a gradient from soft rose to light peach.
///
/// Left: a back arrow icon (white, 24 px) to return to categories.
///
/// Center: category name (“Love”) in a semi‐bold, 20 sp serif font (white).
///
/// Search Bar (Optional)
///
/// Positioned just below the app bar with 16 px top padding.
///
/// Full‐width, height 48 px, corner radius 24 px.
///
/// Background: white with 20% opacity over the gradient.
///
/// Leading icon: magnifying glass (rose‐tinted).
///
/// Hint text: “Search tracks…” in light gray, 14 sp sans‐serif.
///
/// Track List
///
/// Vertical scroll, each track as a card with 16 px horizontal padding and 12
/// px vertical spacing.
///
/// Card Dimensions:
///
/// Height: 80 px
///
/// Corner radius: 16 px
///
/// Background: white with subtle drop shadow (radius 8, opacity 10%).
///
/// Card Contents (left to right):
///
/// Thumbnail/Avatar (60 × 60 px):
///
/// Rounded rectangle radius = 12 px.
///
/// If the track has cover art: show image; if not, show a pastel‐rose
/// placeholder with a white play icon overlay.
///
/// Text Column (center):
///
/// Track Title: 16 sp semi‐bold, dark gray.
///
/// Subtitle: 12 sp regular, medium gray (e.g. “by CreatorName” or “Language:
/// English”).
///
/// Play Button (right):
///
/// Circular 40 × 40 px icon button, background pastel‐peach, icon: white ▶
/// (16 px).
///
/// Tapping plays the default or user audio.
///
/// Interaction States:
///
/// On tap (anywhere on the card), ripple animation in light peach.
///
/// On hover (web) or long press (mobile), card elevation increases from 2 to
/// 4, shadow becomes slightly darker.
///
/// Footer (Optional)
///
/// If more than 10 tracks, show a “Load more” button centered at bottom:
///
/// Height 48 px, width 160 px, corner radius = 24 px.
///
/// Background: pastel‐rose, text: “Load More” in white, 14 sp medium.
///
/// Colors & Typography
///
/// Primary Gradient: #FFD1DC → #FFE4E1 (rose to peach).
///
/// Secondary Accent: #FADADD (lighter rose).
///
/// Text Colors:
///
/// Titles: #333333
///
/// Subtitles: #666666
///
/// Fonts:
///
/// Titles: 16 sp semi‐bold (e.g. “Roboto SemiBold”).
///
/// Subtitles: 12 sp regular (e.g. “Roboto Regular”).
///
/// App bar title: 20 sp serif (e.g. “Playfair Display SemiBold”).
///
/// Spacing & Padding
///
/// Page padding: 16 px on left and right.
///
/// Between cards: 12 px vertical gap.
///
/// Inside each card: 12 px horizontal padding, 10 px vertical centering.
///
/// Space between thumbnail and text column: 10 px; between text column and
/// play button: 12 px.
class TracklistnewWidget extends StatefulWidget {
  const TracklistnewWidget({
    super.key,
    required this.categoryName,
    required this.imageUrl,
  });

  final String? categoryName;
  final String? imageUrl;

  static String routeName = 'Tracklistnew';
  static String routePath = '/tracklistnew';

  @override
  State<TracklistnewWidget> createState() => _TracklistnewWidgetState();
}

class _TracklistnewWidgetState extends State<TracklistnewWidget> {
  late TracklistnewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TracklistnewModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 300.0,
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderRadius: 20.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              title: Text(
                valueOrDefault<String>(
                  widget.categoryName,
                  'Visualisations',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(250.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                  child: Hero(
                    tag: widget.imageUrl!,
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        widget.imageUrl!,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: Color(0x33FFFFFF),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x10000000),
                            )
                          ],
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xFFFADADD),
                                size: 24.0,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.textController',
                                  Duration(milliseconds: 1000),
                                  () => safeSetState(() {}),
                                ),
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Search tracks...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 24.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                maxLines: null,
                                minLines: 2,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ]
                              .divide(SizedBox(width: 10.0))
                              .around(SizedBox(width: 10.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: FFAppState()
                            .tracklist(
                          uniqueQueryKey: widget.categoryName,
                          overrideCache:
                              (_model.textFieldFocusNode?.hasFocus ?? false),
                          requestFn: () => TrackssearchInsideTracklistCall.call(
                            categoryName: widget.categoryName,
                            searchstring: _model.textController.text,
                          ),
                        )
                            .then((result) {
                          try {
                            _model.apiRequestCompleted = true;
                            _model.apiRequestLastUniqueKey =
                                widget.categoryName;
                          } finally {}
                          return result;
                        }),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitRipple(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          final listViewTrackssearchInsideTracklistResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final tracks =
                                  listViewTrackssearchInsideTracklistResponse
                                      .jsonBody
                                      .toList();

                              return RefreshIndicator(
                                onRefresh: () async {
                                  safeSetState(() {
                                    FFAppState().clearTracklistCacheKey(
                                        _model.apiRequestLastUniqueKey);
                                    _model.apiRequestCompleted = false;
                                  });
                                  await _model.waitForApiRequestCompleted();
                                },
                                child: ListView.separated(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: tracks.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 12.0),
                                  itemBuilder: (context, tracksIndex) {
                                    final tracksItem = tracks[tracksIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          AudioplayerpageCopyCopyWidget
                                              .routeName,
                                          queryParameters: {
                                            'trackID': serializeParam(
                                              getJsonField(
                                                tracksItem,
                                                r'''$.track_id''',
                                              ).toString(),
                                              ParamType.String,
                                            ),
                                            'categoryname': serializeParam(
                                              widget.categoryName,
                                              ParamType.String,
                                            ),
                                            'audioselected': serializeParam(
                                              false,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF1C1C1E),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8.0,
                                              color: Color(0x1A000000),
                                              offset: Offset(
                                                0.0,
                                                2.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 10.0, 12.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 70.0,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      '500x500?music',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    getJsonField(
                                                      tracksItem,
                                                      r'''$.image_url''',
                                                    ).toString(),
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: Text(
                                                          getJsonField(
                                                            tracksItem,
                                                            r'''$.title''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 20.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'By  ${getJsonField(
                                                            tracksItem,
                                                            r'''$.user_name''',
                                                          ).toString()}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Icon(
                                                      Icons.play_arrow,
                                                      color: Colors.white,
                                                      size: 16.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
