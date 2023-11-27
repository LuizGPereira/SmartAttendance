import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'prof_iniciar_chamada_widget.dart' show ProfIniciarChamadaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfIniciarChamadaModel
    extends FlutterFlowModel<ProfIniciarChamadaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // State field(s) for temp_aberto widget.
  FocusNode? tempAbertoFocusNode;
  TextEditingController? tempAbertoController;
  String? Function(BuildContext, String?)? tempAbertoControllerValidator;
  // State field(s) for raio widget.
  FocusNode? raioFocusNode;
  TextEditingController? raioController;
  String? Function(BuildContext, String?)? raioControllerValidator;
  // State field(s) for Timer widget.
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (Iniciar Chamada)] action in Button widget.
  ApiCallResponse? apiResultj6s;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tempAbertoFocusNode?.dispose();
    tempAbertoController?.dispose();

    raioFocusNode?.dispose();
    raioController?.dispose();

    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
