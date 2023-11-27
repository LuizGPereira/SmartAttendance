import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/modal_avaliar_atestado/modal_avaliar_atestado_widget.dart';
import '/pages/modal_cancelar_presenca/modal_cancelar_presenca_widget.dart';
import '/pages/modal_validarpresenca/modal_validarpresenca_widget.dart';
import '/backend/schema/structs/index.dart';
import 'detalhe_chamada_widget.dart' show DetalheChamadaWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalheChamadaModel extends FlutterFlowModel<DetalheChamadaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
