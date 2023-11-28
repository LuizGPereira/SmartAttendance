import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'modal_adicionar_atestado_widget.dart' show ModalAdicionarAtestadoWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalAdicionarAtestadoModel
    extends FlutterFlowModel<ModalAdicionarAtestadoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Turma widget.
  String? turmaValue;
  FormFieldController<String>? turmaValueController;
  // State field(s) for Chamada widget.
  String? chamadaValue;
  FormFieldController<String>? chamadaValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Subir Atestado)] action in Button widget.
  ApiCallResponse? apiResultmzz;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
